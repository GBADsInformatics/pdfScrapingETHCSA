#
# Script to create all of the 2018 Poultry tables
#
# The Poultry tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-17a: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - All
#    TABLE 3-17b: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Indigenous Breeds
#    TABLE 3-17c: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Hybrid
#    TABLE 3-17d: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Exotic Breeds
#    TABLE 3–19h: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Poultry
#    TABLE 3–20h: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Poultry
#    TABLE 3-22a: TOTAL EGG PRODUCTION BY ZONE, AND REGION - Indigenous Breeds
#    TABLE 3-22b: TOTAL EGG PRODUCTION BY ZONE, AND REGION - Hybrid
#    TABLE 3-22c: TOTAL EGG PRODUCTION BY ZONE, AND REGION - Exotic Breeds
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27f: NUMBER OF HOLDINGS BY SIZE OF POULTRY
#
# echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
# ./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-1.csv 43 43 tmpTable.csv 2018_Table_3-1.csv 2018
echo "TABLE 3-17a: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - All"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-17a.csv 51 51 tmpTable.csv 2018_Table_3-17a.csv 2018
echo "TABLE 3-17b: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Indigenous Breeds"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-17b.csv 51 51 tmpTable.csv 2018_Table_3-17b.csv 2018
echo "TABLE 3-17c: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Hybrid"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-17c.csv 52 52 tmpTable.csv 2018_Table_3-17c.csv 2018
echo "TABLE 3-17d: POULTRY INVENTORY BY TYPE, ZONE, AND REGION - Exotic Breeds"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-17d.csv 52 52 tmpTable.csv 2018_Table_3-17d.csv 2018
echo "TABLE 3–19h: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Poultry"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-19h.csv 57 57 tmpTable.csv 2018_Table_3-19h.csv 2018
echo "TABLE 3–20h: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Poultry"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-20h.csv 61 61 tmpTable.csv 2018_Table_3-20h.csv 2018
echo "TABLE 3–22a: TOTAL EGG PRODUCTION BY ZONE, AND REGION - Indigenous Breeds"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-22a.csv 62 62 tmpTable.csv 2018_Table_3-22a.csv 2018
echo "TABLE 3–22b: TOTAL EGG PRODUCTION BY ZONE, AND REGION - Hybrid"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-22b.csv 62 62 tmpTable.csv 2018_Table_3-22b.csv 2018
echo "TABLE 3–22c: TOTAL EGG PRODUCTION BY ZONE, AND REGION - Exotic Breeds"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-22c.csv 63 63 tmpTable.csv 2018_Table_3-22c.csv 2018
# echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-24.csv 66 66 tmpTable.csv 2018_Table_3-24.csv 2018
# echo "TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-25.csv 66 66 tmpTable.csv 2018_Table_3-25.csv 2018
# echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-26a.csv 67 67 tmpTable.csv 2018_Table_3-26a.csv 2018
# echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
# ./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-26b.csv 67 67 tmpTable.csv 2018_Table_3-26b.csv 2018
echo "TABLE 3-27f: NUMBER OF HOLDINGS BY SIZE OF POULTRY"
./pdfETHCSApipeline.sh 2018-Livestock.pdf pages.pdf table3-27f.csv 70 70 tmpTable.csv 2018_Table_3-27f.csv 2018
echo "2018 Poultry tables complete"
