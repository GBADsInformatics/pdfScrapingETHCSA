# 
# Author: Rehan Nagoor & Maxim Brochin
# 
# Last Update: July 23, 2021
# 
# Actions:
# - Compares if there are differences in tables where some total values should be the same
#
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

#--------------GET THE DATA FROM THE FIRST FILE year_Table_3-1--------------
    file = open(year + "_Table_3-1.csv", "r")
    csv_reader = csv.reader(file, delimiter=',')
    #set initial elements to 0 for the zone variables
    EthiopiaTotal1 = 0
    TigrayTotal1 = 0
    AfarTotal1 = 0
    AmharaTotal1 = 0
    OromiaTotal1 = 0
    SomaleTotal1 = 0
    BenshangulTotal1 = 0
    SNNPTotal1 = 0
    GambelaTotal1 = 0
    HarariTotal1 = 0
    AddisTotal1 = 0
    DireTotal1 = 0
    tempEthiopiaTotal = 0
    #get the totals for each place from the table
    for row in csv_reader:
        if (row[0] == "Ethiopia" or row[0] == "National") and row[1] == "":
            EthiopiaTotal1 = float(row[2])
        elif row[0] == "Tigray" and row[1] == "":
            TigrayTotal1 = float(row[2])
        elif row[0] == "Afar" and row[1] == "":
            AfarTotal1 = float(row[2])
        elif row[0] == "Amhara" and row[1] == "":
            AmharaTotal1 = float(row[2])
        elif (row[0] == "Oromia" or row[0] == "Oromiya") and row[1] == "":
            OromiaTotal1 = float(row[2])
        elif row[0] == "Somale" and row[1] == "":
            SomaleTotal1 = float(row[2])
        elif (row[0] == "Benshangul-Gumuz" or row[0] == "Benishangul Gumuz") and row[1] == "":
            BenshangulTotal1 = float(row[2])
        elif (row[0] == "SNNP" or row[0] == "S.N.N.P.R") and row[1] == "":
            SNNPTotal1 = float(row[2])
        elif (row[0].lower() == "gambela region" or row[0] == "Gambela") and row[1] == "":
            GambelaTotal1 = float(row[2])
        elif row[0] == "Harari" and row[1] == "":
            HarariTotal1 = float(row[2])
        elif row[0] == "Addis Ababa" and row[1] == "":
            AddisTotal1 = float(row[2])
        elif (row[0] == "Dire Dawa" or row[0] == "Dire Dawa Astedader") and row[1] == "":
            DireTotal1 = float(row[2])
    file.close()
    
    #Get sum of regions total
    tempEthiopiaTotal = TigrayTotal1+AfarTotal1+AmharaTotal1+OromiaTotal1+SomaleTotal1+BenshangulTotal1+SNNPTotal1+GambelaTotal1+HarariTotal1+DireTotal1+AddisTotal1
    tempEthiopiaTotal = abs(tempEthiopiaTotal - EthiopiaTotal1)/tempEthiopiaTotal*100
    print("\nFor "+year + "_Table_3-1.csv the difference between the sum of regions total and Ethiopia total is: "+"{:.0f}".format(tempEthiopiaTotal)+"%")

# --------------TO GET DATA FROM THE REST OF THE TABLES--------------
    #set initial elements to 0
    EthiopiaTotal2 = 0
    TigrayTotal2 = 0
    AfarTotal2 = 0
    AmharaTotal2 = 0
    OromiaTotal2 = 0
    SomaleTotal2 = 0
    BenshangulTotal2 = 0
    SNNPTotal2 = 0
    GambelaTotal2 = 0
    HarariTotal2 = 0
    AddisTotal2 = 0
    DireTotal2 = 0
    EthiopiaPerc = 0
    TigrayPerc = 0
    AfarPerc = 0
    AmharaPerc = 0
    OromiaPerc = 0
    SomalePerc = 0
    BenshangulPerc = 0
    SNNPPerc = 0
    GambelaPerc = 0
    HarariPerc = 0
    AddisPerc = 0
    DirePerc = 0
    tables = None
    if year == "2003":
        tables = [year+"_Table_3-2.csv", year+"_Table_3-18.csv"]
    else:
        tables = [year+"_Table_3-2.csv", year+"_Table_3-14.csv"]
    #open next file to get the data
    for filename in tables:
        file = open(filename, "r")
        csv_reader = csv.reader(file, delimiter=',')
        
        #get the totals for each place from the table
        for row in csv_reader:
            if (row[0] == "Ethiopia" or row[0] == "National") and row[1] == "":
                EthiopiaTotal2 = float(row[2])
            elif row[0] == "Tigray" and row[1] == "":
                TigrayTotal2 = float(row[2])
            elif row[0] == "Afar" and row[1] == "":
                AfarTotal2 = float(row[2])
            elif row[0] == "Amhara" and row[1] == "":
                AmharaTotal2 = float(row[2])
            elif (row[0] == "Oromia" or row[0] == "Oromiya") and row[1] == "":
                OromiaTotal2 = float(row[2])
            elif row[0] == "Somale" and row[1] == "":
                SomaleTotal2 = float(row[2])
            elif (row[0] == "Benshangul-Gumuz" or row[0] == "Benishangul Gumuz") and row[1] == "":
                BenshangulTotal2 = float(row[2])
            elif (row[0] == "SNNP" or row[0] == "S.N.N.P.R") and row[1] == "":
                SNNPTotal2 = float(row[2])
            elif (row[0].lower() == "gambela region" or row[0] == "Gambela") and row[1] == "":
                GambelaTotal2 = float(row[2])
            elif row[0] == "Harari" and row[1] == "":
                HarariTotal2 = float(row[2])
            elif row[0] == "Addis Ababa" and row[1] == "":
                AddisTotal2 = float(row[2])
            elif (row[0] == "Dire Dawa" or row[0] == "Dire Dawa Astedader") and row[1] == "":
                DireTotal2 = float(row[2])
        file.close()
            
        #Get sum of regions total
        tempEthiopiaTotal = TigrayTotal2+AfarTotal2+AmharaTotal2+OromiaTotal2+SomaleTotal2+BenshangulTotal2+SNNPTotal2+GambelaTotal2+HarariTotal2+DireTotal2+AddisTotal1
        tempEthiopiaTotal = abs(tempEthiopiaTotal - EthiopiaTotal2)/tempEthiopiaTotal*100
        print("\nFor "+filename + " the difference between the sum of regions total and Ethiopia total is: "+"{:.0f}".format(tempEthiopiaTotal)+"%")
        
        #Calculate the differences
        EthiopiaPerc = abs(EthiopiaTotal1 - EthiopiaTotal2)/EthiopiaTotal1*100
        TigrayPerc = abs(TigrayTotal1 - TigrayTotal2)/TigrayTotal1*100
        AfarPerc = abs(AfarTotal1 - AfarTotal2)/AfarTotal1*100
        AmharaPerc = abs(AmharaTotal1 - AmharaTotal2)/AmharaTotal1*100
        OromiaPerc = abs(OromiaTotal1 - OromiaTotal2)/OromiaTotal1*100
        SomalePerc = abs(SomaleTotal1 - SomaleTotal2)/SomaleTotal1*100
        BenshangulPerc = abs(BenshangulTotal1 - BenshangulTotal2)/BenshangulTotal1*100
        SNNPPerc = abs(SNNPTotal1 - SNNPTotal2)/SNNPTotal1*100
        if int(year) >= 2007:
            GambelaPerc = abs(GambelaTotal1 - GambelaTotal2)/GambelaTotal1*100
        HarariPerc = abs(HarariTotal1 - HarariTotal2)/HarariTotal1*100
        if int(year) <= 2006:
            AddisPerc = abs(AddisTotal1 - AddisTotal2)/AddisTotal1*100
        DirePerc = abs(DireTotal1 - DireTotal2)/DireTotal1*100

        #Print out all the info
        print("\nTotal Cattle Comparison between "+year+"_Table_3-1.csv and "+filename)
        print("\tLocation\t\tPercentage Difference Between Totals")
        print("\tEthiopia\t\t"+str(EthiopiaPerc)+"%")
        print("\tTigray\t\t\t"+str(TigrayPerc)+"%")
        print("\tAfar\t\t\t"+str(AfarPerc)+"%")
        print("\tAmhara\t\t\t"+str(AmharaPerc)+"%")
        print("\tOromia\t\t\t"+str(OromiaPerc)+"%")
        print("\tSomale\t\t\t"+str(SomalePerc)+"%")
        print("\tBanshangul-Gumuz\t"+str(BenshangulPerc)+"%")
        print("\tSNNP\t\t\t"+str(SNNPPerc)+"%")
        if int(year) >= 2007:
            print("\tGambela Region\t\t"+str(GambelaPerc)+"%")
        print("\tHarari\t\t\t"+str(HarariPerc)+"%")
        if int(year) <= 2006:
            print("\tAddis Ababa\t\t"+str(AddisPerc)+"%")
        print("\tDire Dawar\t\t"+str(DirePerc)+"%")
    
#--------Check if all the rows add up to the total---------#
    if year == "2003":
        tables = [year+"_Table_3-2.csv", year+"_Table_3-7.csv", year+"_Table_3-18.csv", year+"_Table_3-21.csv"]
    elif year == "2004":
        tables = [year+"_Table_3-2.csv", year+"_Table_3-7.csv", year+"_Table_3-14.csv"]
    else:
        tables = [year+"_Table_3-2.csv", year+"_Table_3-7.csv", year+"_Table_3-14.csv", year+"_Table_3-19a.csv", year+"_Table_3-20a.csv", year+"_Table_3-23a.csv", year+"_Table_3-27a.csv"]
    #open next file to get the data
    for filename in tables:
        print("\nRow Data for file "+filename+"\n\tRow No\t% Difference for Totals")
        start = False
        lineNo = 1
        file = open(filename, "r")
        csv_reader = csv.reader(file, delimiter=',')
        
        #get the totals for each place from the table
        if filename == year+"_Table_3-19a.csv" or filename == year+"_Table_3-20a.csv":
            for row in csv_reader:
                if (row[0] == "Ethiopia" or row[0] == "National") and row[1] == "":
                    start = True
                elif row[0] == "":
                    start = False
                
                if start == True:
                    n = 2
                    print("\t"+str(lineNo), end = "")
                    while n < len(row):
                        rowTotal = float(row[n])
                        if rowTotal != 0 and rowTotal != -1:
                            rowSum = 0
                            for x in range(n+1,n+3):
                                if x<len(row) and row[x] != "-1" and row[x] != "":
                                    rowSum += float(row[x])
                            #print if the perc difference of the total and the actual sum
                            rowPerc = (rowTotal - rowSum)/rowTotal*100
                            print("\t"+"{:.0f}".format(rowPerc)+"%", end = "")
                        n += 3
                    print()
                lineNo += 1
            
            file.close()
        else:
            for row in csv_reader:
                if (row[0] == "Ethiopia" or row[0] == "National") and row[1] == "":
                    start = True
                elif row[0] == "":
                    start = False
                
                if start == True:
                    rowTotal = float(row[2])
                    if rowTotal != 0 and rowTotal != -1:
                        rowSum = 0
                        for x in range(3,len(row)):
                            if row[x] != "-1" and row[x] != "":
                                rowSum += float(row[x])
                        #print if the perc difference of the total and the actual sum
                        rowPerc = (rowTotal - rowSum)/rowTotal*100
                        print("\t"+str(lineNo)+"\t"+"{:.0f}".format(rowPerc)+"%")
                
                lineNo += 1
            
            file.close()


if __name__ == "__main__":
    main ( sys.argv[1:] )

#
# End of compareTables.py
#