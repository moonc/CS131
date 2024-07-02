What this command does:

This command allows you to concatenate all CSV files with common categories  in the working directory into one big CSV file.
As these input files are delimited by tabs, we can utilize cut and paste to concatenate the files.

Why/When this command is useful:

Whenever you want to combine large amounts of CSVs with a common axis into one giant CSV file. 
This could be useful for plotting datasets of many trials of an experiment in R or any statistical analysis programs.
Ideally this could cut down on data import time of thousands of small CSV files. 

One specific use case could be the following: 

If you are provided a directory with gene count CSV files. These files have two columns.
The first column is the gene name and the second column tells you the count value for the respective gene.

Having one big CSV file is particulary useful in downstream analysis of a good amount of RNA-Seq experiments.

How to use the command:
1. Provide the reference file in which the program can get the category column.
2. Receive output in counts_output directory

Terminal Execution Results:

Please enter a filename that contains the category  names in the first column

sampleA.csv

The file processing has resulted in the following CSV

        sampleA sampleB sampleC sampleD sampleE sampleF sampleG

GeneA   2       1       2       1       1       2       2

GeneB   0       2       0       2       2       0       0

GeneC   4       7       4       7       7       4       4

GeneD   5       4       5       4       4       5       5

The samples processed in this program can be found in counts_output/filenames.txt
