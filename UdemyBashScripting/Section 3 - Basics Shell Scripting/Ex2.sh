#! /bin/bash

# Create a script that create an executable Script
# whose name is decided by the us

read -p "Name of script to create: " name_s

touch ${name_s}

echo "#! /bin/bash " >> ${name_s}
echo "###### Automatically Created Script ###### " >> ${name_s}
echo " pwd " >> ${name_s}
echo " cal " >> ${name_s}
 

chmod +x ${name_s}

echo " DONE "