# 
# Author: Rehan Nagoor
# 
# Last Update: July 15, 2021
# 
# Actions:
# - Add the corresponding Headers to the tables
#
# Libraries
import sys
import getopt
import csv
#

year = ""


def main ( argv ):
    try:
        (opts, _) = getopt.getopt ( argv,"hy:",["year="] )
    except getopt.GetoptError:
        print ( "compareTables.py -y <year>" )
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ( "compareTables.py -y <year>" )
            sys.exit()
        elif opt in ("-y", "--year"):
            year = arg

    #open first file year_Table_3-1 to get the data
    file = open(year + "_Table_3-1.csv", "r")
    csv_reader = csv.reader(file, delimiter=',')
    lineNo = 0
    #set initial elements to 0
    EthiopiaTotal1 = 0
    TigrayTotal1 = 0
    AfarTotal1 = 0
    AmharaTotal1 = 0
    OromiaTotal1 = 0
    SomaleTotal1 = 0
    SNNPTotal1 = 0
    GambelaTotal1 = 0
    HarariTotal1 = 0
    DireTotal1 = 0
    tempEthiopiaTotal = 0
    #get the totals for each place from the table
    for row in csv_reader:
        if row[0] == "Ethiopia" and row[1] == "":
            EthiopiaTotal1 = float(row[2])
        elif row[0] == "Tigray" and row[1] == "":
            TigrayTotal1 = float(row[2])
        elif row[0] == "Afar" and row[1] == "":
            AfarTotal1 = float(row[2])
        elif row[0] == "Amhara" and row[1] == "":
            AmharaTotal1 = float(row[2])
        elif row[0] == "Oromia" and row[1] == "":
            OromiaTotal1 = float(row[2])
        elif row[0] == "Somale" and row[1] == "":
            SomaleTotal1 = float(row[2])
        elif row[0] == "SNNP" and row[1] == "":
            SNNPTotal1 = float(row[2])
        elif row[0] == "Gambela Region" and row[1] == "":
            GambelaTotal1 = float(row[2])
        elif row[0] == "Harari" and row[1] == "":
            HarariTotal1 = float(row[2])
        elif row[0] == "Dire Dawa" and row[1] == "":
            DireTotal1 = float(row[2])
    file.close()
    
    #Get sum of regions total
    tempEthiopiaTotal = TigrayTotal1+AfarTotal1+AmharaTotal1+OromiaTotal1+SomaleTotal1+SNNPTotal1+GambelaTotal1+HarariTotal1+DireTotal1
    tempEthiopiaTotal = abs(tempEthiopiaTotal - EthiopiaTotal1)
    print("\nFor "+year + "_Table_3-1.csv the difference between the sum of regions total and Ethiopia total is: "+str(tempEthiopiaTotal))

    # TO GET DATA FROM THE REST OF THE TABLES
    #set initial elements to 0
    EthiopiaTotal2 = 0
    TigrayTotal2 = 0
    AfarTotal2 = 0
    AmharaTotal2 = 0
    OromiaTotal2 = 0
    SomaleTotal2 = 0
    SNNPTotal2 = 0
    GambelaTotal2 = 0
    HarariTotal2 = 0
    DireTotal2 = 0
    EthiopiaPerc = 0
    TigrayPerc = 0
    AfarPerc = 0
    AmharaPerc = 0
    OromiaPerc = 0
    SomalePerc = 0
    SNNPPerc = 0
    GambelaPerc = 0
    HarariPerc = 0
    DirePerc = 0
    tables = [year+"_Table_3-2.csv", year+"_Table_3-14.csv"]
    #open next file to get the data
    for filename in tables:
        file = open(filename, "r")
        csv_reader = csv.reader(file, delimiter=',')
        
        #get the totals for each place from the table
        for row in csv_reader:
            if row[0] == "Ethiopia" and row[1] == "":
                EthiopiaTotal2 = float(row[2])
            elif row[0] == "Tigray" and row[1] == "":
                TigrayTotal2 = float(row[2])
            elif row[0] == "Afar" and row[1] == "":
                AfarTotal2 = float(row[2])
            elif row[0] == "Amhara" and row[1] == "":
                AmharaTotal2 = float(row[2])
            elif row[0] == "Oromia" and row[1] == "":
                OromiaTotal2 = float(row[2])
            elif row[0] == "Somale" and row[1] == "":
                SomaleTotal2 = float(row[2])
            elif row[0] == "SNNP" and row[1] == "":
                SNNPTotal2 = float(row[2])
            elif row[0] == "Gambela Region" and row[1] == "":
                GambelaTotal2 = float(row[2])
            elif row[0] == "Harari" and row[1] == "":
                HarariTotal2 = float(row[2])
            elif row[0] == "Dire Dawa" and row[1] == "":
                DireTotal2 = float(row[2])
        file.close()
            
        #Get sum of regions total
        tempEthiopiaTotal = TigrayTotal2+AfarTotal2+AmharaTotal2+OromiaTotal2+SomaleTotal2+SNNPTotal2+GambelaTotal2+HarariTotal2+DireTotal2
        tempEthiopiaTotal = abs(tempEthiopiaTotal - EthiopiaTotal2)
        print("\nFor "+filename + " the difference between the sum of regions total and Ethiopia total is: "+str(tempEthiopiaTotal))
        
        #Calculate the differences
        EthiopiaPerc = abs(EthiopiaTotal1 - EthiopiaTotal2)/EthiopiaTotal1*100
        TigrayPerc = abs(TigrayTotal1 - TigrayTotal2)/TigrayTotal1*100
        AfarPerc = abs(AfarTotal1 - AfarTotal2)/AfarTotal1*100
        AmharaPerc = abs(AmharaTotal1 - AmharaTotal2)/AmharaTotal1*100
        OromiaPerc = abs(OromiaTotal1 - OromiaTotal2)/OromiaTotal1*100
        SomalePerc = abs(SomaleTotal1 - SomaleTotal2)/SomaleTotal1*100
        SNNPPerc = abs(SNNPTotal1 - SNNPTotal2)/SNNPTotal1*100
        GambelaPerc = abs(GambelaTotal1 - GambelaTotal2)/GambelaTotal1*100
        HarariPerc = abs(HarariTotal1 - HarariTotal2)/HarariTotal1*100
        DirePerc = abs(DireTotal1 - DireTotal2)/DireTotal1*100

        #Print out all the info
        print("\nTotal Cattle Comparison between "+year+"_Table_3-1.csv and "+filename)
        print("  Percentage difference between Ethiopia totals = "+str(EthiopiaPerc))
        print("  Percentage difference between Tigray totals = "+str(TigrayPerc))
        print("  Percentage difference between Afar totals = "+str(AfarPerc))
        print("  Percentage difference between Amhara totals = "+str(AmharaPerc))
        print("  Percentage difference between Oromia totals = "+str(OromiaPerc))
        print("  Percentage difference between Somale totals = "+str(SomalePerc))
        print("  Percentage difference between SNNP totals = "+str(SNNPPerc))
        print("  Percentage difference between Gambela Region totals = "+str(GambelaPerc))
        print("  Percentage difference between Harari totals = "+str(HarariPerc))
        print("  Percentage difference between Dire Dawar totals = "+str(DirePerc))
    
if __name__ == "__main__":
    main ( sys.argv[1:] )

#
# End of compareTables.py
#