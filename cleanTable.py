#
# Cleaning tables of Ethiopian livestock data extracted from Ethiopia Central Statistical Agency Reports in PDF Format
# Pipeline Part 2.
# Command Line Version 1.0
# 
# Author: Deborah Stacey
# 
# Last Update: July 7, 2021
# 
# Actions:
# 1.  Correct some known faults in the produced CSV (some fields are separated by a space, not a comma)
# 2.  Data is cleaned - all fields surrounded by double quotes, commas removed from integer fields 
# 3.  "*" converted to -1 and "-" converted to 0 (0 and -1 chosen to keep all data values as integers)
#   Note: 
#      “*” means high CV (less reliable) but the values are included in the total estimates 
#      “-” means households not reported (sic) for specified items
#
# Libraries
import os
import sys
import getopt
import csv
#
# Get parameters from the command line
#    ifile = Input filename (CSV)
#    ofile = Output filename (CSV) - cleaned
#    year = Year of the report to indicate which region/zone file to use
#
input_file = ""
output_file = ""
year = ""

def main ( argv ):
    try:
        (opts, _) = getopt.getopt ( argv,"hi:o:y:",["ifile=","ofile=","year="] )
    except getopt.GetoptError:
        print ( "cleanTable.py -i <inputfile> -o <outputfile> -y <year>" )
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ( "cleanTable.py -i <inputfile> -o <outputfile> -y <year>" )
            sys.exit()
        elif opt in ("-i", "--ifile"):
            input_file = arg
        elif opt in ("-o", "--ofile"):
            output_file = arg
        elif opt in ("-y", "--year"):
            year = arg

    tmpFile = "tmp_" + input_file
    f = open ( input_file, "r" )
    fout = open ( tmpFile, "w" )
    flag = 0
    firstLine = True
    ignoreTable = False
    tableId = input_file[5:].replace(".csv","").replace("a", "-a").replace("b", "-b") # Isolate for tableId
    lineCount = 0
    copyRange = []
    multiTableYears = ["2009", "2017", "2018"]
    myline = f.readline()
    while myline:   
        myline = myline.strip()
        in_string = myline[0:1]
        if len(myline) != 0 and not in_string.isdigit() and myline[0] != ",":
            if myline[0:8] == "Ethiopia" or myline[0:8] == "National":
                flag = 1
            if myline[0:6] == "Somale" or myline[0:7] == "Somalie":
                flag = 2
            if "TABLE" in myline:
                if year in multiTableYears: # Only for multiTableYears
                    # Isolate for tablelineId from line, remove letter from tableId if tablelineId doesn't have one
                    # Check if correct table, and ignore table if not
                    tablelineId = myline.replace(" ", "").replace("–", "-").split(":")[0]
                    if tablelineId[len(tablelineId)-1] not in "ab" and tableId[len(tableId)-1] in "ab":
                        tableId = tableId.replace(tableId[len(tableId)-2:], "")
                    ignoreTable = tableId not in tablelineId
                    # Start copy range
                    if not ignoreTable:
                        copyRange.append(lineCount)
                    # End copy range
                    if ignoreTable and len(copyRange) > 0:
                        copyRange.append(lineCount)
                else:
                    ignoreTable = False
                flag = 0
            # Ignore table if first line doesn't contain tableId only for multiTableYears
            elif myline[0:5] != "TABLE" and firstLine and (year in multiTableYears):
                ignoreTable = True
            if firstLine:
                firstLine = False
            if (flag == 1 or flag == 2) and not ignoreTable:
                x = myline.find(",")
                print ( "\""+myline[0:x], end='\",', file=fout )
                z = x + 1
                myNewline = myline[z:]
                lineout = myNewline.replace(" ","\",\"")
                outline = lineout.replace(",,",",")
                lineout = outline.replace(",,",",")
                print(lineout, file=fout)
        lineCount += 1
        myline = f.readline()
    # End copy range if not ended
    if len(copyRange) == 1:
        copyRange.append(lineCount)
    f.close()
    fout.close()

    # For only multiTableYears, copy range of lines from input to tmp file
    # Then overwrite input file with tmp file, so only a single table is kept
    if year in multiTableYears:
        f = open ( input_file, "r" )
        tmp = open ('tmp.csv', 'w')
        lineCount = 0
        myline = f.readline()
        while myline:
            if lineCount >= copyRange[0] and lineCount < copyRange[1]:
                print(myline, file=tmp, end='')
            lineCount += 1
            myline = f.readline()
        f.close()
        tmp.close()
        if os.path.exists ( input_file ):
            os.remove ( input_file )
        else:
            print ( "Error: csv file does not exist and thus cannot be removed." )
        tmp = open ('tmp.csv', 'r')
        f = open (input_file, 'w')
        myline = tmp.readline()
        while myline:
            print(myline, file=f, end='')
            myline = tmp.readline()
        f.close()
        tmp.close()
        if os.path.exists ( 'tmp.csv' ):
            os.remove ( 'tmp.csv' )
        else:
            print ( "Error: tmp csv file does not exist and thus cannot be removed." )


    lineCount = 0
    fout = open ( output_file, "w" )
    with open ( tmpFile ) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for row in csv_reader:
            lineCount = lineCount + 1
            for i in range (len(row)):
                if row[i] == '*':
                    row[i] = '-1'
                if row[i] == '-':
                    row[i] = '0'
                field = row[i]
                row[i] = field.replace(',','')
                if i != len(row)-1:
                    print ( "\""+row[i]+"\",", end='', file=fout )
                else:
                    print ( "\""+row[i]+"\"", file=fout )

    fout.close()

    print ( "Number of lines in table", output_file, ":", lineCount )

    if os.path.exists ( tmpFile ):
        os.remove ( tmpFile )
    else:
        print ( "Error: Temporary csv file does not exist and thus cannot be removed." )


if __name__ == "__main__":
    main ( sys.argv[1:] )


#
# End of cleanTable.py
#
