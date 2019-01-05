#! /bin/bash
comm -2 -3 $1 $2 > result
cat result
rm result
