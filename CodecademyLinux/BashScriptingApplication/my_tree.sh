#!/bin/bash

echo ""

# If input argument exists, cd into that directory
if [ "$1" != "" ]
   then cd "$1"
fi

pwd

# If no subdirectories, print "no sub-directories"
if [ `ls -F -1 | grep "/" | wc -l` = 0 ]   # Check if no folders
   then echo "   -> no sub-directories"
fi


# ls -R print recursively
# Code: pipe this command to filter for directories
# This peace of code will output just dirs & subdirs
ls -R | grep ":$" | \
   sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'

echo ""

# The `-e` option allows us to use multiple expressions in the same `sed` command.
# The first expression, 's/:$//', removes all colons at the end of each line.
# The second expresion, 's/[^-][^\/]*\//--/g', essentially replaces all / with --.
# The third expresion, 's/^/ /', indents each line by adding three spaces to the beginning.
# The fourth expresion, 's/-/|/', replaces the first dash - of each line with |.
