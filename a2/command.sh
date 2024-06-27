#!/bin/bash
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
cat counts_matrix.txt
rm counts_column
mkdir output
mv counts_matrix.txt counts_matrix.csv && mv counts_matrix.csv output

echo "The following samples were processed and are in the output CSV file"
for i in *.csv; do
	echo ${i%%.*}
done


