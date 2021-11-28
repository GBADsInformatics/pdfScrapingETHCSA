#
# Script to create all of the 2010 Donkeys tables
#
# The Donkeys tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-11: DONKEYS AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3–19e: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys
#    TABLE 3–20e: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27d: NUMBER OF HOLDINGS BY SIZES OF HORSES AND DONKEYS
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-1.csv 40 41 tmpTable.csv 2010_Table_3-1.csv 2010
# echo "TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-5.csv 48 49 tmpTable.csv 2010_Table_3-5.csv 2010
echo "TABLE 3-11: DONKEYS AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-11.csv 60 61 tmpTable.csv 2010_Table_3-11.csv 2010
echo "TABLE 3–19e: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys"
./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-19e.csv 90 91 tmpTable.csv 2010_Table_3-19e.csv 2010
echo "TABLE 3–20e: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys"
./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-20e.csv 106 107 tmpTable.csv 2010_Table_3-20e.csv 2010
# echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-26a.csv 134 135 tmpTable.csv 2010_Table_3-26a.csv 2010
# echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-26b.csv 136 137 tmpTable.csv 2010_Table_3-26b.csv 2010
# echo "TABLE 3-27d:NUMBER OF HOLDINGS BY SIZES OF HORSES AND DONKEYS"
# ./pdfETHCSApipeline.sh 2010-Livestock.pdf pages.pdf table3-27d.csv 144 145 tmpTable.csv 2010_Table_3-27d.csv 2010
echo "2010 Donkeys tables complete"
