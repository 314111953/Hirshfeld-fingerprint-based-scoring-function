# Hirshfeld-fingerprint-based-scoring-function (UNIX/LINUX commandline based)
IF you have a protein-docked ligand complex saved as a PDB. 
Convert PDB file to CIF
Open the cif file in Crystal explorer
Click on each atom of the ligand
Generate 2D Hirshfeld fingerprint
Creation of fingerprint creates a file with the extension .cxs
In the directory of the cxs file, put these scripts
Hfingerprinter.sh
Hirsh1 to Hirsh12
Execute Hfingerprinter.sh 
./Hfingerprinter.sh (If unable to execute the scripts then grant executable rights to the scripts by typing: chmod 777 Hfingerprinter.sh; chmod 777 Hirsh*)

Output file (Hfingerprint.txt) will be generated
Length of Hfingerprint.txt is 156
Hfingerprint.txt contains the numeric Hirshfeld fingerprint

Hirshfeld docking score is calculated by taking cartesian distance between two numeric Hirshfeld fingerprints

 Example
 Hfingerprinta.txt for proteinA-ligandX
 Hfingerprintb.txt for proteinA-ligandY

Executable Hcart can be used to measure the cartesian distance, put Hcart in the directory containing the required fingerpints then follow the instructions:

cp Hfingerprinta.txt fort.15
cp Hfingerprintb.txt fort.16
 
 Execute Hart
 ./Hcart
 Hcart will output the cartesian distance to the screen.
 
