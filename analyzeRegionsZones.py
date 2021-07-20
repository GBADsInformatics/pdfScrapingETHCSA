#
# Analyze Regions and Zones of Ethiopia
# Command Line Version 1.0
# 
# Author: Maxim Brochin
# 
# Last Update: July 19, 2021
# 
# Actions:
# 1.  Read regionsZones files for 2003-2020
# 2.  Calculate zone totals for regions and print to csv file
# 3.  Get set differences for zones added and removed and any new regions added for each year to print to a textfile
#
# Libraries
import sys
import csv

def main ():
    zoneTotals = {}
    regionsZonesDict = {}
    # Create csv file
    f1 = open("ethiopiaRegionsZonesAnalysis.csv", "w")
    f2 = open("ethiopiaRegionsZonesTimeline.txt", "w")
    print('Year,Region,Number of Zones', file=f1)
    # Go through each year's RegionsZones csv file
    yearStart,yearEnd = 2003,2021
    for year in range(yearStart, yearEnd):
        year = str(year)
        filename = year+"/ethiopia"+year+"RegionsZones.csv"
        # Print years for timeline and print no zone if specific year
        print(year, file=f2)
        if year == "2009" or year == "2017" or year == "2018":
            print('No zones for this year.', file=f2)
        # Open file as csv
        with open (filename) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            zoneTotal = 0
            # Go through each region
            for region in csv_reader:
                zoneCount = 0
                tempZones = set()
                # Add new region to dict
                if region[0] not in regionsZonesDict:
                    regionsZonesDict[region[0]] = set()
                    print('Added new region {}'.format(region[0]), file=f2)
                # Go through each region's zones
                if year != "2009" and year != "2017" and year != "2018":
                    for i in range(1, len(region)):
                        if region[i] != '':
                            zoneCount += 1
                            tempZones.add(region[i])
                    # Get set difference for added and removed zones sets to print to file
                    addedToSet = tempZones.difference(regionsZonesDict[region[0]])
                    removedFromSet = regionsZonesDict[region[0]].difference(tempZones)
                    if len(addedToSet) > 0:
                        print('Added to {}: {}'.format(region[0], ', '.join(addedToSet)), file=f2)
                    if len(removedFromSet) > 0:
                        print('Removed from {}: {}'.format(region[0], ', '.join(removedFromSet)), file=f2)
                    regionsZonesDict[region[0]] = tempZones.copy()
                # Calculate zone total for region to print to file
                zoneTotal += zoneCount
                print('{},{},{}'.format(year, region[0], zoneCount), file=f1)
            zoneTotals[year] = zoneTotal
            print('', file=f2)
    # Print zone totals for each year
    print('\nYear,Number of Zones', file=f1)
    for year,total in zoneTotals.items():
        print('{},{}'.format(year,total), file=f1)

    f1.close()
    f2.close()


if __name__ == "__main__":
    main ()


#
# End of analyzeRegionsZones.py
#
