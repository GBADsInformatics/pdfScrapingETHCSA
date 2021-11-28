#
# Script to create all of the 2019 Donkeys tables
#
# The Donkeys tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-11: DONKEYS AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3–19d: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys
#    TABLE 3–20d: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27d: NUMBER OF HOLDINGS BY SIZES OF HORSES AND DONKEYS
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-1.csv 44 45 tmpTable.csv 2019_Table_3-1.csv 2019
# echo "TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-5.csv 52 53 tmpTable.csv 2019_Table_3-5.csv 2019
echo "TABLE 3-11: DONKEYS AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-11.csv 64 65 tmpTable.csv 2019_Table_3-11.csv 2019
echo "TABLE 3–19e: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys"
./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-19e.csv 94 95 tmpTable.csv 2019_Table_3-19e.csv 2019
echo "TABLE 3–20e: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Donkeys"
./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-20e.csv 110 111 tmpTable.csv 2019_Table_3-20e.csv 2019
# echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-26a.csv 138 139 tmpTable.csv 2019_Table_3-26a.csv 2019
# echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-26b.csv 140 141 tmpTable.csv 2019_Table_3-26b.csv 2019
# echo "TABLE 3-27d:NUMBER OF HOLDINGS BY SIZES OF HORSES AND DONKEYS"
# ./pdfETHCSApipeline.sh 2019-Livestock.pdf pages.pdf table3-27d.csv 148 149 tmpTable.csv 2019_Table_3-27d.csv 2019
echo "2019 Donkeys tables complete"
