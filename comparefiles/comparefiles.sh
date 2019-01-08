#! /bin/bash
# Using comm comand to find out the difference between two files content
# extreamily limited
comm -2 -3 $1 $2 > result
if [ -s result ]
then
        echo 'Found some differences:    '
		cat result
else
        echo 'There are no contents differences between those two files    '
fi
rm result
