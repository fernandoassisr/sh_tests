#! /bin/bash
> result.data
while read -r line
    do
        #declare "$line"
        echo $line
        echo $(echo $line | grep -oE '[a-zA-Z]{3} +[a-zA-Z]{3} +\w{1,2} +\w{2}:\w{2}:\w{2} +\w{4}') >> result.data
	done < sample.data
echo 'We found this number of matches: ' $(wc -l result.data)
