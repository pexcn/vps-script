#!/bin/bash

echo "Input your cURL command:"
read command

echo "Input your Google Voice number:"
read number

command=$(echo "$command" | sed 's/curl/curl -s/g')
command=$(echo "$command" | sed 's/mid=2/mid=6/g')
command=$(echo "$command" | sed "s/true%5D/%22%2B1`expr ${number}`%22%2Ctrue%2C%22%22%5D/g")

echo "Press Enter to start...";
read

for (( i=1; ; i++ ))
do
    response=$(eval $command)
    echo $response
    string='[[null,null,"There was an error with your request. Please try again."]]';
    if [[ "$response" != "$string" ]]; then
        echo "Total count is $i";
        exit 0;
    else
        echo `date +'%Y-%m-%d %T'`: "$i count attempt";
    fi
    sleep 0.5s;
done
