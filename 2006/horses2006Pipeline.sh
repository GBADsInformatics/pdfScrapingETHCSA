#
# Script to create all of the 2006 Horses tables
#
# The Horses tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-10: HORSES AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3–19d: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Horses
#    TABLE 3–20d: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Horses
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27d: NUMBER OF HOLDINGS BY SIZES OF HORSES AND DONKEYS
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-1.csv 39 40 tmpTable.csv 2006_Table_3-1.csv 2006
echo "TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-5.csv 47 48 tmpTable.csv 2006_Table_3-5.csv 2006
echo "TABLE 3-10: HORSES AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-10.csv 57 58 tmpTable.csv 2006_Table_3-10.csv 2006
echo "TABLE 3–19d: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Horses"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-19d.csv 87 88 tmpTable.csv 2006_Table_3-19d.csv 2006
echo "TABLE 3–20d: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Horses"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-20d.csv 103 104 tmpTable.csv 2006_Table_3-20d.csv 2006
# echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-26a.csv 137 134 tmpTable.csv 2006_Table_3-26a.csv 2006
# echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-26b.csv 138 136 tmpTable.csv 2006_Table_3-26b.csv 2006
echo "TABLE 3-27d:NUMBER OF HOLDINGS BY SIZES OF HORSES AND DONKEYS"
./pdfETHCSApipeline.sh 2006-Livestock.pdf pages.pdf table3-27d.csv 147 148 tmpTable.csv 2006_Table_3-27d.csv 2006
echo "2006 Horses tables complete"
