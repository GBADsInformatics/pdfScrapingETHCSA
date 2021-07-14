#! /bin/sh

for year in 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020
do
    echo "Adding Headers to $year"
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-1.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-2.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-7.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-14.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-19a.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-20a.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-21.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-23a.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-24.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-25.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-26a.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-26b.csv
    python3.8 addHeader.py -y $year -i $year/${year}_Table_3-27a.csv
done