#
# Script to create all of the 2003 Horses tables
#
# The Horses tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-10: HORSES AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-1.csv 32 33 tmpTable.csv 2003_Table_3-1.csv 2003
echo "TABLE 3-5: NUMBER OF HORSES AND DONKEYS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-5.csv 40 41 tmpTable.csv 2003_Table_3-5.csv 2003
echo "TABLE 3-10: HORSES AGED 3 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2003-Livestock.pdf pages.pdf table3-10.csv 50 51 tmpTable.csv 2003_Table_3-10.csv 2003
echo "2003 Horses tables complete"
