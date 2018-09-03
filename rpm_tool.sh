#!/bin/bash


echo "Name	Version	License	Source_rpm	URL	Description" > text.txt
i=1
A=$(rpm -qa --queryformat '%{name}\n' | sed -n "$i p")
while [ $i -ne 388 ]
do
	i=$(($i+1))
	B=$(rpm -qa --queryformat '%{version}' $A)
	C=$(rpm -qa --queryformat '%{license}' $A)
	E=$(rpm -qa --queryformat '%{sourcerpm}' $A)
	G=$(rpm -qa --queryformat '%{url}' $A)
	D=$(rpm -qa --queryformat '%{description}' $A | tr "\n" " ")
	echo "$A	$B	$C	$D	$G	$D" >> text.txt

done