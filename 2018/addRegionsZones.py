#
# Cleaning tables of Ethiopian livestock data extracted from Ethiopia Central Statistical Agency Reports in PDF Format
# Add explicit regions and zones to an Ethiopian CSV file
#
# Pipeline Part 3.
#
# Command Line Version: 1.0
#
# Author: Deborah Stacey
#
# Last Update: June 30, 2021
#
# Actions:
#    Convert the first column that has either a region or a zone into 2 columns: Region, Zone
#
# Note:
#    - Need to use a file that has the regions and zones - this can change each year so you
#    have to input the year of your data. The files containing the region and zone data are 
#    named to indicate the year.  The filename is composed as follows:
#    ethiopia+year+RegionsZones.csv, for example, ethiopia2020RegionsZones.csv
#    - Ethiopia (country level) is recorded as a region
#    - Regions have a blank zone field and zones have both a region and zone field
# Regions and Zone Files
#    Each line in the file consists of the name of a region followed by the names of all of
#    the zones in that region.  There are 10 regions documented even though there are officially
#    11 regions in Ethiopia, but one region is Addis Abba and it never appears in the reports.
#
# Libraries
#
import csv
import sys
import getopt
#
# Get parameters from the command line
#    ifile = Input filename (CSV) - cleaned
#    ofile = Output filename (CSV) - cleaned with regions and zones added
#    year = Year of the report to indicate which region/zone file to use
#
input_file = ""
output_file = ""
year = ""

def main ( argv ):
    try:
        (opts, _) = getopt.getopt ( argv,"hi:o:y:",["ifile=","ofile=","year="] )
    except getopt.GetoptError:
        print ( "addRegionsZones.py -i <inputfile> -o <outputfile> -y <year>" )
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ( "addRegionsZones.py -i <inputfile> -o <outputfile> -y <year>" )
            sys.exit()
        elif opt in ("-i", "--ifile"):
            input_file = arg
        elif opt in ("-o", "--ofile"):
            output_file = arg
        elif opt in ("-y", "--year"):
            year = arg
#
    regions = []
#
# Read in the regions and their zones from the file "ethiopia[YEAR]RegionsZones.csv"
#
    ethiopia = "ethiopia"+year+"RegionsZones.csv"
    with open (ethiopia) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for row in csv_reader:
            zones = []
            zones.append(row[0])
            count = len(row)
            if count == 1:     # No zones
                zones.append("None")
            else:
                i = 1
                while i < count:
                    zones.append(row[i])
                    i = i + 1
            regions.append(zones)
#
# Take a CSV file with implicit regions and zones and create explicit columns for them
#
# Special Cases
# - In Ethiopia there is one region that has one zone and they are both named Harari (2019 list of regions and zones).
# Thus, there is an explicit search for this name in order to distinguish which is the region and which is the zone.
# - In 2015 and 2016 there is a Region called Oromia and a Zone in Amhara called Oromia - need to check that the first
# occurrance of Oromia is not considered a Region.
#
    harariFlag = 0
    oromiaFlag = 0
    f = open ( output_file, "w" )
    with open ( input_file ) as csv_file:    
        csv_reader = csv.reader ( csv_file, delimiter=',' )
        linect = 1
        for row in csv_reader:
            if linect == 1:          # this will be the country level entry for Ethiopia
                linect = 2
                print ( row[0],end=",,",file=f )
                for i in range(1, len(row)-1):
                    print ( row[i],end=",",file=f )
                i = i + 1
                print ( row[i],file=f )
            else:  
                x = 0
                stopFlag = 0
                while x < len(regions) and stopFlag == 0:    # search for the region name in the list of regions
                    region = regions[x]
                    if row[0] == "Oromia" and oromiaFlag == 0 and int(year) < 2017:  # not a region - this is a zone for Amhara
                        oromiaFlag = 1
                        stopFlag = 2
                    elif region[0] == row[0]:   # a region has been found
                        print ("Region found: "+row[0])
                        if harariFlag == 0:     # check to see if the Harari region has not been found 
                            print ( region[0],end=",,",file=f )
                            reg = region[0]
                            stopFlag = 1
                            if reg == "Harari" and year == "2019":  # check to see if this is the Harari special
                                harariFlag = 1               # the Harari region record has been found
                    x = x + 1
                if stopFlag != 1:               # this is not a region record, use previous region for this zone
                    print ( reg+","+row[0],end=",",file=f )
                    if row[0] == "Harari" and year == "2019":                   # the Harari zone has been found 
                        harariFlag = 0
                for i in range(1, len(row)-1):
                    print ( row[i],end=",",file=f )
                i = i + 1
                print ( row[i],file=f )
    f.close()


if __name__ == "__main__":
    main ( sys.argv[1:] )

#
# End of addRegionsZones.py
#
