#!/bin/bash
# Delete fol_1 directory if it exists
if [ -d "fol_1" ]; then
    rm -rf fol_1
fi

# Delete fol_2 directory if it exists
if [ -d "fol_2" ]; then
    rm -rf fol_2
fi
# Create folders fol_1 and fol_2
mkdir fol_1 fol_2

echo "Folders fol_1 and fol_2 created successfully."
# go to folder 1
cd fol_1 || exit

# Create files 1_1.txt, 1_2.txt, 1_3.txt
touch 1_1.txt 1_2.txt 1_3.txt
# Set permissions for files ending with _1.txt and _3.txt in fol_1
chmod u+rw 1_1.txt 1_3.txt
echo "Files 1_1.txt, 1_2.txt, 1_3.txt created in fol_1 with premissions"

# Add permissions for files ending with _2.txt in fol_1, keeping old permissions
chmod u+rwx 1_2.txt

echo "File 1_2.txt in fol_1 now has read, write, and execute permissions"
# go to main folder
cd ..

# go to folder 2
cd fol_2 || exit

# Create files 2_1.txt, 2_2.txt, 2_3.txt
touch 2_1.txt 2_2.txt 2_3.txt
# Set permissions for files ending with _1.txt and _3.txt in fol_2
chmod u+rw 2_1.txt 2_3.txt with premissions
echo "Files 2_1.txt, 2_2.txt, 2_3.txt created successfully in fol_2"
# Add permissions for files ending with _2.txt in fol_2, keeping old permissions
chmod u+rwx 2_2.txt

echo "File 2_2.txt in fol_2 now has read, write, and execute permissions"
echo "Job completed"
