UserName:s1250050
Name:Tsuyoshi Kumamoto
Script:grep -v '#' score | awk -F: 'BEGIN{sum1=0}{sum1+=$2}END{print sum1/NR}'
Result:72
