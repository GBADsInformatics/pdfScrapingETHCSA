#
# Script to create all of the 2006 Camels tables
#
# The Camels tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-6: NUMBER OF MULES AND CAMELS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-13: CAMELS AGED 4 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3–19g: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Camels
#    TABLE 3–20g: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Camels
#    TABLE 3-21: NUMBER OF DAIRY ANIMALS, MILK PRODUCTION, AND LACTATION PERIOD BY ZONE AND REGION
#    TABLE 3-23e: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Camels
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27e: NUMBER OF HOLDINGS BY SIZES OF MULES AND CAMELS
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-1.csv 39 40 tmpTable.csv 2006_Table_3-1.csv 2006
echo "TABLE 3-6: NUMBER OF MULES AND CAMELS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-6.csv 49 50 tmpTable.csv 2006_Table_3-6.csv 2006
echo "TABLE 3-13: CAMELS AGED 4 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-13.csv 63 64 tmpTable.csv 2006_Table_3-13.csv 2006
echo "TABLE 3–19g: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Camels"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-19g.csv 93 94 tmpTable.csv 2006_Table_3-19g.csv 2006
echo "TABLE 3–20g: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Camels"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-20g.csv 109 110 tmpTable.csv 2006_Table_3-20g.csv 2006
echo "TABLE 3-21: NUMBER OF DAIRY ANIMALS, MILK PRODUCTION, AND LACTATION PERIOD BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-21.csv 113 114 tmpTable.csv 2006_Table_3-21.csv 2006
echo "TABLE 3-23e: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Camels"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-23e.csv 129 130 tmpTable.csv 2006_Table_3-23e.csv 2006
echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-24.csv 133 134 tmpTable.csv 2006_Table_3-24.csv 2006
echo "TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-25.csv 135 136 tmpTable.csv 2006_Table_3-25.csv 2006
echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-26a.csv 137 138 tmpTable.csv 2006_Table_3-26a.csv 2006
echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-26b.csv 139 140 tmpTable.csv 2006_Table_3-26b.csv 2006
echo "TABLE 3-27e: NUMBER OF HOLDINGS BY SIZES OF MULES AND CAMELS"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-27e.csv 149 150 tmpTable.csv 2006_Table_3-27e.csv 2006
echo "2006 Camels tables complete"
