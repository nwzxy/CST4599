#!/bin/bash

echo "Multiplying file size"
for i in {1..5};
do 
    echo "Multipling file ${i} times"
    cat ./NASA_access_logs >> ./NASA_access_logs_1GB; 
done

echo "Resulting file size is: $(ls -lrth ./NASA_access_logs_test)"
echo "Total number of lines in the resulting file: $(wc -l NASA_access_logs_test)"
# ls -lrth ./NASA_access_log_1GB