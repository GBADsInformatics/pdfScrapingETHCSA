#
# PDF table converter for Ethiopian livestock data from Ethiopia Central Statistical Agency
# Pipeline Part 1: extract and convert PDF pages containing tables to csv
# Command Line Version 1.0
# 
# Author: Deborah Stacey
# 
# Last Update: June 29, 2021
# 
# Actions:
#    Copies a range of pages from one PDF document and puts them in a separate file.
#    Converts these pages into CSV.
#
# Notes:
#    Conversion from PDF to CSV done with PDFTables (https://pdftables.com/). API key is contained
#    in a file for security.
#
# Libraries
import sys
import getopt
from PyPDF2 import PdfFileWriter, PdfFileReader
import pdftables_api
#
# Get parameters from the command line
#    ifile = Input filename
#    ofile = Output filename (PDF)
#    csvfile = Output filename (CSV)
#    start = Start page
#    end = End page
#
input_file = ""
output_file = ""
csv_file = ""
start_page = 0
end_page = 0

def main ( argv ):
    try:
        (opts, _) = getopt.getopt ( argv,"hi:o:c:s:e:",["ifile=","ofile=","csvfile=","start=","end="] )
    except getopt.GetoptError:
        print ( "extractConvertPDFTables.py -i <inputfile> -o <outputfile> -c <csvfile> -s <start page number> -e <end page number>" )
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ( "extractConvertPDFTables.py -i <inputfile> -o <outputfile> -c <csvfile> -s <start page number> -e <end page number>" )
            sys.exit()
        elif opt in ("-i", "--ifile"):
            input_file = arg
        elif opt in ("-o", "--ofile"):
            output_file = arg
        elif opt in ("-c", "--csvfile"):
            csv_file = arg
        elif opt in ("-s", "--start"):
            start_page = int(arg)
        elif opt in ("-e", "--end"):
            end_page = int(arg)

    print ( 'Processing PDF ( ' + input_file + ' ) to extract pages ',start_page,' to ',end_page,' and save in ' + output_file )

#
# Extract pages from PDF file (input_file) and move to their own PDF file (output_file)
#    Call PdfFile functions to find pages and put them in their own PDF file
#
    inputReader = PdfFileReader(open(input_file, 'rb'))

    outputWriter = PdfFileWriter()
    for pageNum in range (start_page, end_page+1):
        page = inputReader.getPage(pageNum-1)
        outputWriter.addPage(page)
        print ( 'Extracting page ',pageNum )

    with open(output_file, 'wb') as f:
        outputWriter.write(f)       
    f.close()
#
# Convert from PDF pages to CSV file using PDFTables API
#    Get the API key from key file .PDFTablesKey
#
    f = open(".PDFTablesKey", "r")
    myKey = f.readline()
    myKey = myKey.strip()
    f.close()
#
# Use the PDFtables API to convert PDF outputfile to CSV
#
    convert = pdftables_api.Client ( myKey )     # PDFtables API key is linked to GBADs/dastacey account

    convert.csv ( output_file, csv_file )
    print ("Conversion complete")


if __name__ == "__main__":
    main ( sys.argv[1:] )


#
# End of extractConvertPDFTables.py
#
