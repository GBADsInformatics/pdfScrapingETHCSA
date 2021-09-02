#
# Cleaning tables of Ethiopian livestock data extracted from Ethiopia Central Statistical Agency Reports in PDF Format
# Pipeline Part 4.
# Command Line Version 1.0
# 
# Author: Rehan Nagoor & Maxim Brochin
# 
# Last Update: September 1, 2021
# 
# Actions:
# - Add the corresponding Headers to the tables
#
# Libraries
import sys
import getopt
#
# Get parameters from the command line
#    ifile = Input filename (CSV)
#    year = Year of the report to indicate which region/Zone file to use
#
input_file = ""
year = ""

def main ( argv ):
    try:
        (opts, _) = getopt.getopt ( argv,"hi:y:",["ifile=","year="] )
    except getopt.GetoptError:
        print ( "addHeader.py -y <year> -i <inputfile>" )
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ( "addHeader.py -y <year> -i <inputfile>" )
            sys.exit()
        elif opt in ("-i", "--ifile"):
            input_file = arg
        elif opt in ("-y", "--year"):
            year = arg

# get the original content of the files
    f = open(input_file,'r')
    temp = f.read()
    f.close()

# add the new header to the start of the file based on year and table
    f = open(input_file, 'w')
    if "3-1." in input_file:
        if year == "2003" or year == "2004":
            f.write("Region,Zone,Cattle,Sheep,Goats,Horses,Asses,Mules,Camels,Poultry,Beehives\n")
        elif int(year) >= 2005 and int(year) <= 2011:
            f.write("Region,Zone,Cattle,Sheep,Goats,Horses,Donkeys,Mules,Camels,Poultry,Beehives\n")
        else:
            f.write("Region,Zone,Cattle,Sheep,Goats,Horses,Donkeys,Mules,Camels,Poultry,Beehives\n")
    elif "3-2." in input_file:
        f.write("Region,Zone,Total,Male <6 Months,Male 6 Mo - <1 yr,Male 1 yr - <3 yrs,Male 3 - <10 yrs,Male 10 yrs & Over,Female <6 Months,Female 6 Mo - <1 yr,Female 1 yr - <3 yrs,Female 3 - <10 yrs,Female 10 yrs & Over\n")
    elif "3-3." in input_file or "3-4." in input_file:
        f.write("Region,Zone,Total,Male <6 Months,Male 6 Mo - <1 yr,Male 1 yr - <2 yrs,Male 2 yrs & Over,Female <6 Months,Female 6 Mo - <1 yr,Female 1 yr - <2 yrs,Female 2 yrs & Over\n")
    elif "3-7." in input_file:
        f.write("Region,Zone,Total,Male Draught,Male Beef,Male Breeding,Male Other,Female Milk,Female Draught,Female Beef,Female Breeding,Female Other\n")
    elif "3-8." in input_file:
        f.write("Region,Zone,Total,Male Mutton/Meat,Male Wool,Male Breeding,Male Other,Female Mutton/Meat,Female Wool,Female Breeding,Female Other\n")
    elif "3-9." in input_file:
        f.write("Region,Zone,Total,Male Meat,Male Breeding,Male Other,Female Meat,Female Milk,Female Breeding,Female Other\n")
    elif "3-14." in input_file:
        if year == "2003":
            f.write("Region,Zone,Total Poultry,Cocks,Cockerels,Pullets,Non-Laying Hens,Chicks,Laying Hens\n")
        else:
            f.write("Region,Zone,Total,Male Indigenous,Male Hybrid,Male Exotic,Female Indigenous,Female Hybrid,Female Exotic\n")
    elif "3-15." in input_file and int(year) > 2003:
        f.write("Region,Zone,Total,Male Indigenous,Male Hybrid,Male Exotic,Female Indigenous,Female Hybrid,Female Exotic\n")
    elif "3-16." in input_file:
        if year == "2003":
            f.write("Region,Zone,Number Of Dairy Cows,Number Of Milking Cows,Average Daily Milk Prod.,Average Lactation Period (Months),Total Milk Production (LT),Number Of Dairy Camels,Number Of Milking Camels,Average Daily Milk Prod.,Average Lactation Period (Months),Total Milk Production\n")
        else: 
            f.write("Region,Zone,Total,Male Indigenous,Male Hybrid,Male Exotic,Female Indigenous,Female Hybrid,Female Exotic\n")
    elif "3-17." in input_file and year == "2003":
        f.write("Region,Zone,Total Laying Hens,Average Number of Clutchs/Anum,Average Number of Days/Clutch,Average Number of Eggs/Hen/Clutch,Total Egg Production (Number)\n")
    elif "3-17a." in input_file or "3-17b." in input_file or "3-17c." in input_file or "3-17d." in input_file:
        if year == "2004" and not "3-17d." in input_file:
            f.write("Region,Zone,Calves,Lambs,Goat-Kids,Horses/Mules,Asses,Camels\n")
        else:
            f.write("Region,Zone,Total Poultry,Cocks,Cockerels,Pullets,Non-Laying Hens,Chicks,Laying Hens\n")
    elif ("3-18a." in input_file or "3-18b." in input_file or "3-18c." in input_file) and year == "2004":
        f.write("Region,Zone,Total Poultry,Cocks,Cockerels,Pullets,Non-Laying Hens,Chicks,Laying Hens\n")
    elif ("3-18." in input_file or "3-19." in input_file or "3-20." in input_file) and year == "2003":
        f.write("Region,Zone,Total,Male Indigenous,Male Hybrid,Male Exotic,Female Indigenous,Female Hybrid,Female Exotic\n")
    elif "3-19a." in input_file or "3-19b." in input_file or "3-19c." in input_file:
        f.write(",,Number Of Births,,,Number Of Purchases,,,Acquired By Any Other Means,,\nRegion,Zone,Total,Male,Female,Total,Male,Female,Total,Male,Female\n")
    elif "3-19h." in input_file:
        f.write("Region,Zone,Total Number of Births,Total Number of Purchases,Total Acquired by Other Means\n")
    elif "3-20." in input_file and year == "2004":
        f.write("Region,Zone,Number Of Dairy Cows,Number Of Milking Cows,Average Daily Milk Prod.,Average Lactation Period (Months),Total Milk Production (LT),Number Of Dairy Camels,Number Of Milking Camels,Average Daily Milk Prod.,Average Lactation Period (Months),Total Milk Production\n")
    elif "3-20a." in input_file or "3-20b." in input_file or "3-20c." in input_file:
        f.write(",,Number Of Sales,,,Number Of Slaughters,,,Number Of Deaths,,,Offerings,,\nRegion,Zone,Total,Male,Female,Total,Male,Female,Total,Male,Female,Total,Male,Female\n")
    elif "3-20h." in input_file:
        f.write("Region,Zone,Total Number of Sales,Total Number of Slaughters,Total Number of Deaths,Offerings\n")
    elif "3-21." in input_file:
        if year == "2003":
            f.write("Region,Zone,Cattle,Sheep,Goats,Draught Animals,Camels,Poultry\n")
        elif year == "2004":
            f.write(",,Indigenous,,,,,Exotic,,,,\nRegion,Zone,Total Laying Hens,Average Number of Egg-Laying Period/Year,Average Length of a Period,Average Number of Eggs/Hen/Period,Total Egg Production (Number),Total Laying Hens,Average Number of Egg-Laying Period/Year,Average Length of a Period,Average Number of Eggs/Hen/Period,Total Egg Production (Number)\n")
        else:
            f.write("Region,Zone,Number Of Dairy Cows,Number Of Milking Cows,Average Daily Milk Prod.,Average Lactation Period (Months),Total Milk Production (Lt),Number Of Dairy Camels,Number Of Milking Camels,Average Daily Milk Prod.,Average Lactation Period (Months),Total Milk Production (Lt)\n")
    elif "3-22." in input_file or "3-23." in input_file:
        f.write("Region,Zone,Cattle,Sheep,Goats,Draught Animals,Camels,Poultry\n")
    elif "3-22a." in input_file or "3-22b." in input_file or "3-22c." in input_file:
        f.write("Region,Zone,Total Laying Hens,Average Number of Egg-Laying Period/Year,Average Length of a Period,Average Number of Eggs/Hen/Period,Total Egg Production (Number)\n")
    elif "3-23a." in input_file or "3-23b." in input_file or "3-23c." in input_file:
        if int(year) >= 2006 and int(year) <= 2009:
            f.write("Region,Zone,Total Vaccinated,Anthrax,Blackleg,Pleuro-Pneumonia,Hemorrhagic Septicemia,Rinderpest,Others\n")
        else:
            f.write("Region,Zone,Total Vaccinated,Anthrax,Blackleg,Pleuro-Pneumonia,Hemorrhagic Septicemia,Others\n")
    elif "3-23f." in input_file:
        f.write("Region,Zone,Total Vaccinated\n")
    elif "3-24." in input_file or "3-25." in input_file or "3-25a." in input_file or "3-25b." in input_file:
        f.write("Region,Zone,Cattle,Sheep,Goats,Draught Animals,Camels,Poultry\n")
    elif "3-26a." in input_file or "3-26b." in input_file or "3-26c." in input_file:
        if year == "2004" and "3-26b." in input_file:
            f.write("Region,Zone,Holdings With No Sheep,1-4 Head,5-9 Head,10-49 Head,50-99 Head,100-199 Head,200-499 Head,>=500 Head\n")
        elif year == "2004" and "3-26c." in input_file:
            f.write("Region,Zone,Holdings With No Goats,1-4 Head,5-9 Head,10-49 Head,50-99 Head,100-199 Head,200-499 Head,>=500 Head\n")
        elif year == "2004":
            f.write("Region,Zone,Holdings With No Cattle,1-2 Head,3-4 Head,5-9 Head,10-19 Head,20-49 Head,50-99 Head,100-199 Head,>=200 Head\n")
        else:
            f.write("Region,Zone,Cattle,Sheep,Goats,Horses,Donkeys,Mules,Camels,Poultry\n")
    elif "3-27a." in input_file:
        if year == "2019" or year == "2020":
            f.write("Region,Zone,All Holdings,Holding With No Cattle,1-2 Head,3-4 Head,5-9 Head,10-19 Head,20-49 Head\n")
        else:
            f.write("Region,Zone,Holdings With No Cattle,1-2 Head,3-4 Head,5-9 Head,10-19 Head,20-49 Head,50-99 Head,100-199 Head,>=200 Head\n")
    elif "3-27b." in input_file:
        if year == "2019" or year == "2020":
            f.write("Region,Zone,All Holdings,Holding With No Sheep,1-4 Head,5-9 Head,10-49 Head,50-99 Head,100-199 Head\n")
        else:
            f.write("Region,Zone,Holdings With No Sheep,1-4 Head,5-9 Head,10-49 Head,50-99 Head,100-199 Head,200-499 Head,>=500 Head\n")
    elif "3-27c." in input_file:
        if year == "2019" or year == "2020":
            f.write("Region,Zone,All Holdings,Holding With No Goats,1-4 Head,5-9 Head,10-49 Head,50-99 Head,100-199 Head\n")
        else:
            f.write("Region,Zone,Holdings With No Goats,1-4 Head,5-9 Head,10-49 Head,50-99 Head,100-199 Head,200-499 Head,>=500 Head\n")
    elif "3-27f." in input_file or ("3-26f" in input_file and year == "2004"):
            f.write("Region,Zone,Holdings With No Poultry,1-9 Head,10-49 Head,50-99 Head,100-199 Head,>=200 Head\n")

# add the original content after the header
    f.write(temp)
    f.close()


if __name__ == "__main__":
    main ( sys.argv[1:] )

#
# End of addHeader.py
#