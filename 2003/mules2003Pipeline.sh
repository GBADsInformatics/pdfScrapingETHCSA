#
# Script to create all of the 2003 Mules tables
#
# The Mules tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-6: NUMBER OF MULES AND CAMELS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-12: MULES AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-1.csv 32 33 tmpTable.csv 2003_Table_3-1.csv 2003
# echo "TABLE 3-6: NUMBER OF MULES AND CAMELS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-6.csv 42 43 tmpTable.csv 2003_Table_3-6.csv 2003
echo "TABLE 3-12: Mules AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-12.csv 54 55 tmpTable.csv 2003_Table_3-12.csv 2003
echo "2003 Mules tables complete"
