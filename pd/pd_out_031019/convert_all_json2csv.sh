#!/bin/bash
for file in *.json
do
	~ucbtrth/Downloads/rubakan/json2csv/json2csv_uniprot_allPDB.pl $file >`basename $file .json`.csv
done