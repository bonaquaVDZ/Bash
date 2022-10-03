#! /bin/bash

# Array of cities you will be getting the temperature of.
cities=("Toronto" "Berlin" "London")

#
> temperatures.txt

for city in ${cities[@]}
do
	sleep 1
	./weather1.sh -s $city | sed 's/+//g' | sed 's/°C//' >> temperatures.txt
done

sort -k2 temperatures.txt > sorted_temperatures.txt
