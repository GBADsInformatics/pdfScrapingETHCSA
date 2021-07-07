#! /bin/sh
#
# Pipeline for extracting, converting, and cleaning Ethiopia CSA PDF tables
#
# Arguments: CSA report PDF filename, table pages PDF filename, table pages CSV filename, start page, end page, cleaned table filename, table with regions and zones filename, year, table no.
# Example: ./pdfETHCSApipeline.sh 2020-Livestock.pdf pages.pdf pages.csv 40 41 2020TABLE3-1.csv 2020_Table_3-1.csv 2020 1
#
# Table no. represents which table to pick when there are 2 tables in one page in the pdf file, must be either 1 or 2.
#
# Check that there are 8 arguments on the commandline
#
number=$#
if [[ $number -ne 8 ]]
then
   echo "Usage: ./pdfETHCSApipeline.sh <CSA report filename> <tmp PDF file> <tmp CSV file> <start page> <end page> <Cleaned Table filename> <Table with Regions and Zones> <year> <table no.>"
   echo "Example: ./pdfETHCSApipeline.sh 2020-Livestock.pdf pages.pdf pages.csv 40 41 2020TABLE3-1.csv 2020_Table_3-1.csv 2020 1"
   exit
fi
# Capture the commandline arguments
inputfile=$1
outputfile=$2
csvfile=$3
start=$4
end=$5
cleanoutput=$6
regionzone=$7
year=$8
tableNo=$9
echo "Taking pages $start-$end from $inputfile and extracting and cleaning table data and storing in $cleanoutput"
echo "Extracting and converting..."
python3.8 extractConvertPDFTables.py -i $inputfile -o $outputfile -c $csvfile -s $start -e $end
echo "Cleaning..."
# the table no. is appended to the end of cleanTable to signify which version of the file to open
python3.8 cleanTable$tableNo.py -i $csvfile -o $cleanoutput
rm $outputfile
sed -i --in-place "s/Hareri/Harari/g" $cleanoutput
sed -i --in-place "s/DirDawaAstedader/Dire Dawa Astedader/g" $cleanoutput
sed -i --in-place "s/Somalie/Somale/g" $cleanoutput
echo "Adding Regions and Zones to $cleanoutput to create $regionzone"
python3.8 addRegionsZones.py -y $year -i $cleanoutput -o $regionzone
rm $cleanoutput
echo "Datafile: $regionzone"
