#
# Script to create all of the 2015 Sheep tables
#
# The Sheep tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-3: NUMBER OF SHEEP BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-8: SHEEP AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3-15 NUMBERS OF SHEEP BY SEX, BREED, ZONE, AND REGION
#    TABLE 3–19b: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Sheep
#    TABLE 3–20b: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Sheep
#    TABLE 3-23b: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Sheep
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27b: NUMBER OF HOLDINGS BY SIZE OF SHEEP
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-1.csv 44 45 tmpTable.csv 2015_Table_3-1.csv 2015
echo "TABLE 3-3: NUMBER OF SHEEP BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-3.csv 48 49 tmpTable.csv 2015_Table_3-3.csv 2015
echo "TABLE 3-8: SHEEP AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-8.csv 58 59 tmpTable.csv 2015_Table_3-8.csv 2015
echo "TABLE 3-15 NUMBERS OF SHEEP BY SEX, BREED, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-15.csv 72 73 tmpTable.csv 2015_Table_3-15.csv 2015
echo "TABLE 3–19b: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Sheep"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-19b.csv 88 89 tmpTable.csv 2015_Table_3-19b.csv 2015
echo "TABLE 3–20b: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Sheep"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-20b.csv 104 105 tmpTable.csv 2015_Table_3-20b.csv 2015
echo "TABLE 3-23b: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Sheep"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-23b.csv 128 129 tmpTable.csv 2015_Table_3-23b.csv 2015
# echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-24.csv 134 135 tmpTable.csv 2015_Table_3-24.csv 2015
# echo "TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-25.csv 136 137 tmpTable.csv 2015_Table_3-25.csv 2015
# echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-26a.csv 138 139 tmpTable.csv 2015_Table_3-26a.csv 2015
# echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-26b.csv 140 141 tmpTable.csv 2015_Table_3-26b.csv 2015
echo "TABLE 3-27b: NUMBER OF HOLDINGS BY SIZE OF SHEEP"
./pdfETHCSApipeline.sh 2015-Livestock.pdf pages.pdf table3-27b.csv 144 145 tmpTable.csv 2015_Table_3-27b.csv 2015
echo "2015 Sheep tables complete"
