#
# Script to create all of the 2013 Goat tables
#
# The Goats tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-4: NUMBER OF GOATS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-9: GOATS AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3-16: NUMBER OF GOATS BY SEX, BREED, ZONE, AND REGION
#    TABLE 3–19c: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Goats
#    TABLE 3–20c: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - GOATS
#    TABLE 3-23c: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Goats
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27c: NUMBER OF HOLDINGS BY SIZE OF GOATS
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-1.csv 44 45 tmpTable.csv 2013_Table_3-1.csv 2013
echo "TABLE 3-4: NUMBER OF GOATS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-3.csv 50 51 tmpTable.csv 2013_Table_3-4.csv 2013
echo "TABLE 3-9: GOATS AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-9.csv 60 61 tmpTable.csv 2013_Table_3-9.csv 2013
echo "TABLE 3-16: NUMBER OF GOATS BY SEX, BREED, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-16.csv 74 75 tmpTable.csv 2013_Table_3-16.csv 2013
echo "TABLE 3–19c: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Goats"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-19c.csv 90 91 tmpTable.csv 2013_Table_3-19c.csv 2013
echo "TABLE 3–20c: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - GOATS"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-20c.csv 106 107 tmpTable.csv 2013_Table_3-20c.csv 2013
echo "TABLE 3-23c: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Goats"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-23a.csv 130 131 tmpTable.csv 2013_Table_3-23c.csv 2013
# echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-24.csv 134 135 tmpTable.csv 2013_Table_3-24.csv 2013
# echo "TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-25.csv 136 137 tmpTable.csv 2013_Table_3-25.csv 2013
# echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-26a.csv 138 139 tmpTable.csv 2013_Table_3-26a.csv 2013
# echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-26b.csv 140 141 tmpTable.csv 2013_Table_3-26b.csv 2013
echo "TABLE 3-27c: NUMBER OF HOLDINGS BY SIZE OF GOATS"
./pdfETHCSApipeline.sh 2013-Livestock.pdf pages.pdf table3-27c.csv 146 147 tmpTable.csv 2013_Table_3-27c.csv 2013
echo "2013 Goats tables complete"
