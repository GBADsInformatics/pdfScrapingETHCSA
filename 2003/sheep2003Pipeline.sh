#
# Script to create all of the 2003 Sheep tables
#
# The Sheep tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-3: NUMBER OF SHEEP BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-8: SHEEP AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3-19: NUMBER OF SHEEP BY SEX, BREED, ZONE, AND REGION
#    TABLE 3-21: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION
#    TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK DIED BY ZONE AND REGION
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-1.csv 32 33 tmpTable.csv 2003_Table_3-1.csv 2003
echo "TABLE 3-3: NUMBER OF SHEEP BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-3.csv 36 37 tmpTable.csv 2003_Table_3-3.csv 2003
echo "TABLE 3-8: SHEEP AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-8.csv 46 47 tmpTable.csv 2003_Table_3-8.csv 2003
echo "TABLE 3-19: NUMBER OF SHEEP BY SEX, BREED, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-19.csv 68 69 tmpTable.csv 2003_Table_3-19.csv 2003
echo "TABLE 3-21: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-21.csv 72 73 tmpTable.csv 2003_Table_3-21.csv 2003
echo "TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-22.csv 74 75 tmpTable.csv 2003_Table_3-22.csv 2003
echo "TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-23.csv 76 77 tmpTable.csv 2003_Table_3-23.csv 2003
echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK DIED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-24.csv 78 79 tmpTable.csv 2003_Table_3-24.csv 2003
echo "2003 Sheep tables complete"