#! /bin/bash

declare -i SUM=0
while read X ; do
    SUM+=$X
done < <(sed -E s/^0+// sample.data)
echo "Sum is: $SUM"