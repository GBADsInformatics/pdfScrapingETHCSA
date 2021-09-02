#! /bin/sh

#Script that adds headers to the appropriate files for each year

for year in 2011
do
    echo "Adding Headers to $year"
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-1.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-2.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-3.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-4.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-7.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-8.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-9.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-14.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-15.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-16.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-17a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-17b.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-17c.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-17d.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-18.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-19a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-19b.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-19c.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-19h.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-20.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-20a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-20b.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-20c.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-20h.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-21.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-22.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-22a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-22b.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-22c.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-23.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-23a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-23b.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-23c.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-24.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-25.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-25a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-25b.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-26a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-26b.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-27a.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-27b.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-27c.csv
    # python3.8 addHeader.py -y $year -i $year/${year}_Table_3-27f.csv
done