#
# Script to create all of the 2004 Camels tables
#
# The Camels tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-6: NUMBER OF CATTLE BY AGE AND SEX OF ANIMAL, ZONE, ZONE, AND REGION
#    TABLE 3-13: CAMELS AGED 4 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3-17a: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - TOTAL
#    TABLE 3-17b: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - MALE
#    TABLE 3-17c: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - FEMALE
#    TABLE 3-20: NUMBER OF DAIRY ANIMALS, MILK PRODUCTION, AND LACTATION PERIOD BY ZONE AND REGION
#    TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION
#    TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-25a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-25b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER REASONS BY ZONE AND REGION
#    TABLE 3-26e: NUMBER OF HOLDINGS BY SIZES OF MULES AND CAMELS
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-1.csv 37 38 tmpTable.csv 2004_Table_3-1.csv 2004
echo "TABLE 3-6: NUMBER OF MULES AND CAMELS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-6.csv 47 48 tmpTable.csv 2004_Table_3-6.csv 2004
echo "TABLE 3-13: CAMELS AGED 4 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-13.csv 61 62 tmpTable.csv 2004_Table_3-13.csv 2004
echo "TABLE 3-17a: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - TOTAL"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-17a.csv 69 70 tmpTable.csv 2004_Table_3-17a.csv 2004
echo "TABLE 3-17b: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - MALE"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-17b.csv 71 72 tmpTable.csv 2004_Table_3-17b.csv 2004
echo "TABLE 3-17c: ESTIMATED NUMBER OF NEWBORN LIVESTOCK DURING THE REFERENCE PERIOD BY TYPE, ZONE AND REGION - FEMALE"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-17c.csv 73 74 tmpTable.csv 2004_Table_3-17c.csv 2004
echo "TABLE 3-20: NUMBER OF DAIRY ANIMALS, MILK PRODUCTION, AND LACTATION PERIOD BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-20.csv 83 84 tmpTable.csv 2004_Table_3-20.csv 2004
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
echo "TABLE 3-26e: NUMBER OF HOLDINGS BY SIZES OF MULES AND CAMELS"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-26e.csv 105 106 tmpTable.csv 2004_Table_3-26e.csv 2004
echo "2004 Camels tables complete"
