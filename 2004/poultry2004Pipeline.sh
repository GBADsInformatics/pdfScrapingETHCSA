#
# Script to create all of the 2004 Poultry tables
#
# The Poultry tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-18a: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Both Indigenous and Exotic Breeds
#    TABLE 3-18b: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Indigenous Breeds
#    TABLE 3-18c: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Exotic Breeds
#    TABLE 3-21: TOTAL EGG PRODUCTION BY ZONE, AND REGION
#    TABLE 3-22: ESTIMATED NUMBER OF LIVESTOCK VACCINATED BY ZONE AND REGION
#    TABLE 3-23: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-25a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-25b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER REASONS BY ZONE AND REGION
#    TABLE 3-26f: NUMBER OF HOLDINGS BY SIZE OF POULTRY
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-1.csv 37 38 tmpTable.csv 2004_Table_3-1.csv 2004
echo "TABLE 3-18a: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Both Indigenous and Exotic Breeds"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-18a.csv 75 76 tmpTable.csv 2004_Table_3-18a.csv 2004
echo "TABLE 3-18b: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Indigenous Breeds"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-18b.csv 77 78 tmpTable.csv 2004_Table_3-18b.csv 2004
echo "TABLE 3-18c: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Exotic Breeds"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-18c.csv 79 80 tmpTable.csv 2004_Table_3-18c.csv 2004
echo "TABLE 3-21: TOTAL EGG PRODUCTION BY ZONE, AND REGION"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-21.csv 85 86 tmpTable.csv 2004_Table_3-21.csv 2004
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
echo "TABLE 3-26f: NUMBER OF HOLDINGS BY SIZE OF POULTRY"
./pdfETHCSApipeline.sh 2004-Livestock.pdf pages.pdf table3-26f.csv 107 108 tmpTable.csv 2004_Table_3-26f.csv 2004
echo "2004 Poultry tables complete"
