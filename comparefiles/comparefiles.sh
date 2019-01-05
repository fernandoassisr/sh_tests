#! /bin/bash
comm -2 -3 $1 $2 > result
if [ -s result ]
then
        echo 'Found some differences:    '
		cat result
else
        echo 'There are no contents differences betwen those two files    '
fi
rm result
