What this command does:

This command allows you to concatenate all sequence outputs in the working directory into one big CSV file.
As these input files are delimited by tabs, we can utilize cut and paste to concatenate the files.

Why/When this command is useful:

The intended use is with input files from RNA-Seq gene count files. These files have two columns.
The first column is the gene name and the second column tells you the count value for the respective gene.

Having one big CSV file is particulary useful in downstream analysis of a good amount of RNA-Seq experiments.

How to use the command:
1. Provide the reference file in which the program can get the gene name column.
2. Receive output in counts_output directory

Terminal Execution Results:

[allensu24@sjsu a2]$ ./command.sh

Please enter a filename that contains the gene names in the first column

sampleA.csv

The file processing has resulted in the following counts matrix

GeneA   2       1

GeneB   0       2

GeneC   4       7

GeneD   5       4

The following samples were processed and are in the output CSV file

sampleA sampleB

GeneA   2       1

GeneB   0       2

GeneC   4       7

GeneD   5       4



