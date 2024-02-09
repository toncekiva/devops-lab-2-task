#!/bin/bash

# Create folders fol_1 and fol_2
mkdir fol_1 fol_2

echo "Folders fol_1 and fol_2 created successfully."
# go to folder 1
cd fol_1 || exit

# Create files 1_1.txt, 1_2.txt, 1_3.txt
touch 1_1.txt 1_2.txt 1_3.txt

echo "Files 1_1.txt, 1_2.txt, 1_3.txt created in fol_1."

# go to main folder
cd ..

# go to folder 2
cd fol_2 || exit

# Create files 2_1.txt, 2_2.txt, 2_3.txt
touch 2_1.txt 2_2.txt 2_3.txt

echo "Files 2_1.txt, 2_2.txt, 2_3.txt created successfully in fol_2."
