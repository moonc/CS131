#!/bin/bash
if [ -d "counts_output" ];then
	rm counts_output/*
	rm -d counts_output
fi

echo "Please enter a filename that contains the gene names in the first column"
read gene_file

if [ -e "$gene_file" ]; then
	touch counts_matrix.txt
	cut -d'	' -f1 $gene_file > counts_matrix.txt
fi

touch counts_column
for i in *.csv; do
      if [ -e "$i" ]; then
	      cut -d $'\t' -f2 $i > counts_column
	      paste counts_matrix.txt counts_column > counts_matrix2.txt && mv counts_matrix2.txt counts_matrix.txt
      fi
done       

echo "The file processing has resulted in the following counts matrix"
#cat counts_matrix.txt
rm counts_column
mkdir counts_output
mv counts_matrix.txt counts_matrix.csv && mv counts_matrix.csv counts_output

echo "The following samples were processed and are in the output CSV file"

if [ -e "filenames.txt" ];then
	rm filenames.txt
fi

touch filenames.txt
for i in *.csv; do
	echo ${i%%.*} >>filenames.txt
done
mv filenames.txt counts_output/

sed '1 s/^/ /' counts_output/filenames.txt > counts_output/filenames2.txt
sed 's/ /\t/' counts_output/filenames2.txt > counts_output/filenames3.txt


cat counts_output/filenames3.txt | paste -d'\t' -s - > file_header
cat counts_output/counts_matrix.csv >> file_header

mv file_header final_output.csv && mv final_output.csv counts_output/

cat counts_output/final_output.csv

rm counts_output/filenames2.txt
rm counts_output/filenames3.txt



