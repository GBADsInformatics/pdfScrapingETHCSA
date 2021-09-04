# pdfScrapingETHCSA

This repository contains scripts on extracting and cleaning up livestock data, including the raw and clean data from the Ethiopia CSA Report PDFs.
 
## Installation
`pip3 install -r requirements.txt`

## Documentation
Main directory contains:
* `pdfETHCSApipeline.sh` runs  the following scripts: `extractConvertPDFTables.py`, `cleanTable.py`, `addRegionsZones.py` `and addHeader.py` (more documentation in files)
* `analyzeRegionsZones.py` is used for name variants and changing number of zones in regions study
* `compareTables.py` is used for finding absolute error differences in cattle data

Each year folder contains:
* Data for cattle, poultry, sheep, goats and camels
* TAR files containing meta data and cleaned-up tables
* Flags for cattle data (error of > 5%)
* Region-zone csv files
* Notes on cleaning up tables

## Usage
* Make sure `<livestock><year>Pipeline.sh`, `pdfETHCSApipeline.sh`, `<year>-Livestock.pdf` and `ethiopia<year>RegionsZones.csv` files are all in main directory
* Run pipeline file:
    `./<livestock><year>Pipeline.sh`
* Script will generate `table<id>.csv` meta files and `<year>_Table_<id>.csv` table files
* Look to year folder's notes to clean up tables
