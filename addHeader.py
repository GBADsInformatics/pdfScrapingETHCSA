#
# Cleaning tables of Ethiopian livestock data extracted from Ethiopia Central Statistical Agency Reports in PDF Format
# Pipeline Part 4.
# Command Line Version 1.0
# 
# Author: Rehan Nagoor & Maxim Brochin
# 
# Last Update: July 14, 2021
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
#    year = Year of the report to indicate which region/zone file to use
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
            f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,HORSES,ASSES,MULES,CAMELS,POULTRY,BEEHIVES\n")
        elif int(year) >= 2005 and int(year) <= 2011:
            f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,HORSES,DONKEYS,MULES,CAMELS,POULTRY,BEEHIVES\n")
        else:
            f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,HORSES,DONKEYS,MULES,CAMELS,POULTRY,BEEHIVES\n")
    elif "3-2." in input_file:
        f.write(",,,MALE,,,,,FEMALE,,,,\nREGION,ZONE,TOTAL,<6 Months,6 Mo - <1 yr,1 yr - <3 yrs,3 - <10 yrs,10 yrs & Over,<6 Months,6 Mo - <1 yr,1 yr - <3 yrs,3 - <10 yrs,10 yrs & Over\n")
    elif "3-7." in input_file:
        f.write(",,,MALE,,,,FEMALE,,,,\nREGION,ZONE,TOTAL,DRAUGHT,BEEF,BREEDING,OTHER,MILK,DRAUGHT,BEEF,BREEDING,OTHER\n")
    elif "3-14." in input_file:
        f.write(",,,MALE,,,FEMALE,,\nREGION,ZONE,TOTAL,INDIGENOUS,HYBRID,EXOTIC,INDIGENOUS,HYBRID,EXOTIC\n")
    elif "3-16." in input_file and year == "2003":
        f.write("REGION,ZONE,NUMBER OF DAIRY COWS,NUMBER OF MILKING COWS,AVERAGE DAILY MILK PROD.,AVERAGE LACTATION PERIOD (MONTHS),TOTAL MILK PRODUCTION (LT),NUMBER OF DAIRY CAMELS,NUMBER OF MILKING CAMELS,AVERAGE DAILY MILK PROD.,AVERAGE LACTATION PERIOD (MONTHS),TOTAL MILK PRODUCTION\n")
    elif ("3-17a." in input_file or "3-17b." in input_file or "3-17c." in input_file) and year == "2004":
        f.write("REGION,ZONE,CALVES,LAMBS,GOAT-KIDS,HORSES/MULES,ASSES,CAMELS\n")
    elif "3-18." in input_file and year == "2003":
        f.write(",,,MALE,,,FEMALE,,\nREGION,ZONE,TOTAL,INDIGENOUS,HYBRID,EXOTIC,INDIGENOUS,HYBRID,EXOTIC\n")
    elif "3-19a." in input_file:
        f.write(",,NUMBER OF BIRTHS,,,NUMBER OF PURCHASES,,,ACQUIRED BY ANY OTHER MEANS,,\nREGION,ZONE,TOTAL,MALE,FEMALE,TOTAL,MALE,FEMALE,TOTAL,MALE,FEMALE\n")
    elif "3-20." in input_file and year == "2004":
        f.write("REGION,ZONE,NUMBER OF DAIRY COWS,NUMBER OF MILKING COWS,AVERAGE DAILY MILK PROD.,AVERAGE LACTATION PERIOD (MONTHS),TOTAL MILK PRODUCTION (LT),NUMBER OF DAIRY CAMELS,NUMBER OF MILKING CAMELS,AVERAGE DAILY MILK PROD.,AVERAGE LACTATION PERIOD (MONTHS),TOTAL MILK PRODUCTION\n")
    elif "3-20a." in input_file:
        f.write(",,NUMBER OF SALES,,,NUMBER OF SLAUGHTERS,,,NUMBER OF DEATHS,,,OFFERINGS,,\nREGION,ZONE,TOTAL,MALE,FEMALE,TOTAL,MALE,FEMALE,TOTAL,MALE,FEMALE,TOTAL,MALE,FEMALE\n")
    elif "3-21." in input_file:
        if year == "2003":
            f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,DRAUGHT ANIMALS,CAMELS,POULTRY\n")
        else:
            f.write("REGION,ZONE,NUMBER OF DAIRY COWS,NUMBER OF MILKING COWS,AVERAGE DAILY MILK PROD.,AVERAGE LACTATION PERIOD (MONTHS),TOTAL MILK PRODUCTION (Lt),NUMBER OF DAIRY CAMELS,NUMBER OF MILKING CAMELS,AVERAGE DAILY MILK PROD.,AVERAGE LACTATION PERIOD (MONTHS),TOTAL MILK PRODUCTION (Lt)\n")
    elif "3-22." in input_file or "3-23." in input_file:
        f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,DRAUGHT ANIMALS,CAMELS,POULTRY\n")
    elif "3-23a." in input_file:
        if int(year) >= 2006 and int(year) <= 2009:
            f.write("REGION,ZONE,TOTAL VACCINATED,ANTHRAX,BLACKLEG,PLEURO-PNEUMONIA,HEMORRHAGIC SEPTICEMIA,RINDERPEST,OTHERS\n")
        else:
            f.write("REGION,ZONE,TOTAL VACCINATED,ANTHRAX,BLACKLEG,PLEURO-PNEUMONIA,HEMORRHAGIC SEPTICEMIA,OTHERS\n")
    elif "3-24." in input_file or "3-25." in input_file or "3-25a." in input_file or "3-25b." in input_file:
        f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,DRAUGHT ANIMALS,CAMELS,POULTRY\n")
    elif "3-26a." in input_file or "3-26b." in input_file:
        if year == "2004":
            f.write("REGION,ZONE,HOLDINGS WITH NO CATTLE,1-2 HEAD,3-4 HEAD,5-9 HEAD,10-19 HEAD,20-49 HEAD,50-99 HEAD,100-199 HEAD,>=200 HEAD\n")
        else:
            f.write("REGION,ZONE,CATTLE,SHEEP,GOATS,HORSES,DONKEYS,MULES,CAMELS,POULTRY\n")
    elif "3-27a." in input_file:
        if year == "2019" or year == "2020":
            f.write("REGION,ZONE,ALL HOLDING,HOLDING WITH NO CATTLE,1-2 HEAD,3-4 HEAD,5-9 HEAD,10-19 HEAD,20-49 HEAD\n")
        else:
            f.write("REGION,ZONE,HOLDING WITH NO CATTLE,1-2 HEAD,3-4 HEAD,5-9 HEAD,10-19 HEAD,20-49 HEAD,50-99 HEAD, 100-199 HEAD, >=200HEAD\n")

# add the original content after the header
    f.write(temp)
    f.close()


if __name__ == "__main__":
    main ( sys.argv[1:] )

#
# End of addHeader.py
#