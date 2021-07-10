#! /bin/sh
#
# Pipeline for extracting, converting, and cleaning Ethiopia CSA PDF tables
#
# Arguments: CSA report PDF filename, table pages PDF filename, table pages CSV filename, start page, end page, cleaned table filename, table with regions and zones filename, year
# Example: ./pdfETHCSApipeline.sh 2020-Livestock.pdf pages.pdf pages.csv 40 41 2020TABLE3-1.csv 2020_Table_3-1.csv 2020
#
# Check that there are 8 arguments on the commandline
#
number=$#
if [[ $number -ne 8 ]]
then
   echo "Usage: ./pdfETHCSApipeline.sh <CSA report filename> <tmp PDF file> <tmp CSV file> <start page> <end page> <Cleaned Table filename> <Table with Regions and Zones> <year>"
   echo "Example: ./pdfETHCSApipeline.sh 2020-Livestock.pdf pages.pdf pages.csv 40 41 2020TABLE3-1.csv 2020_Table_3-1.csv 2020"
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
echo "Taking pages $start-$end from $inputfile and extracting and cleaning table data and storing in $cleanoutput"
echo "Extracting and converting..."
python3 extractConvertPDFTables.py -i $inputfile -o $outputfile -c $csvfile -s $start -e $end
echo "Cleaning..."
python3 cleanTable.py -i $csvfile -o $cleanoutput -y $year
rm $outputfile
sed -i --in-place "s/Hareri/Harari/g" $cleanoutput
sed -i --in-place "s/DirDawaAstedader/Dire Dawa Astedader/g" $cleanoutput
sed -i --in-place "s/Somalie/Somale/g" $cleanoutput
sed -i --in-place "s/Gambela region/Gambela/g" $cleanoutput
sed -i --in-place "s/Gambela/Gambela Region/g" $cleanoutput
echo "Adding Regions and Zones to $cleanoutput to create $regionzone"
python3 addRegionsZones.py -y $year -i $cleanoutput -o $regionzone
rm $cleanoutput
echo "Datafile: $regionzone"
