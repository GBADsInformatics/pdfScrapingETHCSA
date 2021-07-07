#
# Cleaning tables of Ethiopian livestock data extracted from Ethiopia Central Statistical Agency Reports in PDF Format
# Pipeline Part 2.
# Command Line Version 1.0
# 
# Author: Deborah Stacey, Rehan Nagoor
# 
# Last Update: July 07, 2021
# 
# Actions:
# 1.  Correct some known faults in the produced CSV (some fields are separated by a space, not a comma)
# 2.  Data is cleaned - all fields surrounded by double quotes, commas removed from integer fields 
# 3.  "*" converted to -1 and "-" converted to 0 (0 and -1 chosen to keep all data values as integers)
#   Note: 
#      “*” means high CV (less reliable) but the values are included in the total estimates 
#      “-” means households not reported (sic) for specified items
#
#   File is edited to only give the output for the first table when two tables are in one page
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
#
input_file = ""
output_file = ""

def main ( argv ):
    try:
        (opts, _) = getopt.getopt ( argv,"hi:o:",["ifile=","ofile="] )
    except getopt.GetoptError:
        print ( "cleanTable.py -i <inputfile> -o <outputfile>" )
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ( "cleanTable.py -i <inputfile> -o <outputfile>" )
            sys.exit()
        elif opt in ("-i", "--ifile"):
            input_file = arg
        elif opt in ("-o", "--ofile"):
            output_file = arg

    tmpFile = "tmp_" + input_file
    f = open ( input_file, "r" )
    fout = open ( tmpFile, "w" )
    # print("\n\nHERE:\n"+tmpFile+"\n\n", file=sys.stdout)
    # print("\n\nHERE:\n"+output_file+"\n\n", file=sys.stdout)
    flag = 0
    myline = f.readline()
    tableNo = 0
    while myline:   
        myline = myline.strip()
        in_string = myline[0:1]
        #calculate the table no.
        if "TABLE" in myline or myline[0:10] == "h. Poultry" or myline[0:16] == "c. Exotic Breeds":
            tableNo = tableNo + 1
            #print("\n\n"+myline[0:]+"\n"+str(tableNo)+"\n", file=sys.stdout)

        if tableNo == 2:
            break

        if len(myline) != 0 and not in_string.isdigit() and myline[0] != ",":
            if myline[0:8] == "Ethiopia" or myline[0:8] == "National":
                flag = 1
            if myline[0:6] == "Somale" or myline[0:7] == "Somalie":
                flag = 2
            if myline[0:5] == "TABLE":
                flag = 0
            if flag == 1 or flag == 2:
                x = myline.find(",")
                print ( "\""+myline[0:x], end='\",', file=fout )
                z = x + 1
                myNewline = myline[z:]
                lineout = myNewline.replace(" ","\",\"")
                outline = lineout.replace(",,",",")
                lineout = outline.replace(",,",",")
                print(lineout, file=fout)
        myline = f.readline()
    f.close()
    fout.close()

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
