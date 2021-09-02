#
# Script to create all of the 2004 Goat tables
#
# The Sheep tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-4: NUMBER OF GOATS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-9: GOATS AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3-16: NUMBER OF GOATS BY SEX, BREED, ZONE, AND REGION
#    TABLE 3-17a: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - TOTAL
#    TABLE 3-17b: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - MALE
#    TABLE 3-17c: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - FEMALE
#    TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION
#    TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-25a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-25b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER REASONS BY ZONE AND REGION
#    TABLE 3-26c: NUMBER OF HOLDINGS BY SIZE OF GOATS
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-1.csv 37 38 tmpTable.csv 2004_Table_3-1.csv 2004
echo "TABLE 3-4: NUMBER OF GOATS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-4.csv 43 44 tmpTable.csv 2004_Table_3-4.csv 2004
echo "TABLE 3-9: GOATS AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-9.csv 53 54 tmpTable.csv 2004_Table_3-9.csv 2004
echo "TABLE 3-16: NUMBER OF GOATS BY SEX, BREED, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-16.csv 67 68 tmpTable.csv 2004_Table_3-16.csv 2004
echo "TABLE 3-17a: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - TOTAL"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-17a.csv 69 70 tmpTable.csv 2004_Table_3-17a.csv 2004
echo "TABLE 3-17b: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - MALE"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-17b.csv 71 72 tmpTable.csv 2004_Table_3-17b.csv 2004
echo "TABLE 3-17c: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - FEMALE"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-17c.csv 73 74 tmpTable.csv 2004_Table_3-17c.csv 2004
echo "TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-22.csv 87 88 tmpTable.csv 2004_Table_3-22.csv 2004
echo "TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-23.csv 89 90 tmpTable.csv 2004_Table_3-23.csv 2004
echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-24.csv 91 92 tmpTable.csv 2004_Table_3-24.csv 2004
echo "TABLE 3-25a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-25a.csv 93 94 tmpTable.csv 2004_Table_3-25a.csv 2004
echo "TABLE 3-25b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER REASONS BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-25b.csv 95 96 tmpTable.csv 2004_Table_3-25b.csv 2004
echo "TABLE 3-26c: NUMBER OF HOLDINGS BY SIZE OF GOATS"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-26c.csv 101 102 tmpTable.csv 2004_Table_3-26c.csv 2004
echo "2004 Goat tables complete"
