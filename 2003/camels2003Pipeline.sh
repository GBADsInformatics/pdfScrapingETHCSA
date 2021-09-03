#
# Script to create all of the 2003 Camels tables
#
# The Camels tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-16: NUMBER OF DAIRY ANIMALS, MILK PRODUCTION, AND LACTATION PERIOD BY ZONE AND REGION
#    TABLE 3-21: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION
#    TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK DIED BY ZONE AND REGION
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-1.csv 32 33 tmpTable.csv 2003_Table_3-1.csv 2003
echo "TABLE 3-6: NUMBER OF MULES AND CAMELS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-6.csv 42 43 tmpTable.csv 2003_Table_3-6.csv 2003
echo "TABLE 3-13: CAMELS AGED 4 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-13.csv 56 57 tmpTable.csv 2003_Table_3-13.csv 2003
echo "TABLE 3-16: NUMBER OF DAIRY ANIMALS, MILK PRODUCTION, AND LACTATION PERIOD BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-16.csv 62 63 tmpTable.csv 2003_Table_3-16.csv 2003
echo "TABLE 3-21: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-21.csv 72 73 tmpTable.csv 2003_Table_3-21.csv 2003
echo "TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-22.csv 74 75 tmpTable.csv 2003_Table_3-22.csv 2003
echo "TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-23.csv 76 77 tmpTable.csv 2003_Table_3-23.csv 2003
echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK DIED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-24.csv 78 79 tmpTable.csv 2003_Table_3-24.csv 2003
echo "2003 Camels tables complete"
