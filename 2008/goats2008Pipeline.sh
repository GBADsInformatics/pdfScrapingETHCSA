#
# Script to create all of the 2008 Goat tables
#
# The Goats tables are:
#    TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION
#    TABLE 3-4: NUMBER OF GOATS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION
#    TABLE 3-9: GOATS AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION
#    TABLE 3-16: NUMBER OF GOATS BY SEX, BREED, ZONE, AND REGION
#    TABLE 3–19c: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Goats
#    TABLE 3–20c: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - GOATS
#    TABLE 3-23c: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Goats
#    TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION
#    TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION
#    TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION
#    TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION
#    TABLE 3-27c: NUMBER OF HOLDINGS BY SIZE OF GOATS
#
echo "TABLE 3-1: NUMBER OF LIVESTOCK BY TYPE OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-1.csv 39 40 tmpTable.csv 2008_Table_3-1.csv 2008
echo "TABLE 3-4: NUMBER OF GOATS BY AGE AND SEX OF ANIMAL, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-4.csv 45 46 tmpTable.csv 2008_Table_3-4.csv 2008
echo "TABLE 3-9: GOATS AGED 2 YEARS AND OLDER BY SEX, PURPOSE, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-9.csv 55 56 tmpTable.csv 2008_Table_3-9.csv 2008
echo "TABLE 3-16: NUMBER OF GOATS BY SEX, BREED, ZONE, AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-16.csv 69 70 tmpTable.csv 2008_Table_3-16.csv 2008
echo "TABLE 3–19c: ESTIMATED NUMBERS OF BIRTHS, PURCHASES, AND ACQUIRED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - Goats"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-19c.csv 85 86 tmpTable.csv 2008_Table_3-19c.csv 2008
echo "TABLE 3–20c: ESTIMATED NUMBERS OF SALES, SLAUGHTERS, DEATHS, AND OFFERED ANIMALS DURING THE REFERENCE PERIOD BY ZONE AND REGION - GOATS"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-20c.csv 101 102 tmpTable.csv 2008_Table_3-20c.csv 2008
echo "TABLE 3-23c: ESTIMATED NUMBER OF VACCINATED LIVESTOCK BY ZONE AND REGION - Goats"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-23c.csv 125 126 tmpTable.csv 2008_Table_3-23c.csv 2008
echo "TABLE 3-24: ESTIMATED NUMBER OF LIVESTOCK AFFLICTED/DISEASED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-24.csv 129 130 tmpTable.csv 2008_Table_3-24.csv 2008
echo "TABLE 3-25: ESTIMATED NUMBER OF LIVESTOCK TREATED BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-25.csv 131 132 tmpTable.csv 2008_Table_3-25.csv 2008
echo "TABLE 3-26a: ESTIMATED NUMBER OF LIVESTOCK DIED FROM DISEASE BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-26a.csv 133 134 tmpTable.csv 2008_Table_3-26a.csv 2008
echo "TABLE 3-26b: ESTIMATED NUMBER OF LIVESTOCK DIED FROM OTHER CAUSES BY ZONE AND REGION"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-26b.csv 135 136 tmpTable.csv 2008_Table_3-26b.csv 2008
echo "TABLE 3-27c: NUMBER OF HOLDINGS BY SIZE OF GOATS"
./pdfETHCSApipeline.sh 2008-Livestock.pdf pages.pdf table3-27c.csv 141 142 tmpTable.csv 2008_Table_3-27c.csv 2008
echo "2008 Goats tables complete"
