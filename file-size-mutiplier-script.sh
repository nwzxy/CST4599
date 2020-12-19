# #!/bin/bash

# echo "Multiplying file size"
# for i in {1..5};
# do 
#     echo "Multipling file ${i} times"
#     cat ./NASA_access_logs >> ./NASA_access_logs_1GB; 
# done

# echo "Resulting file size is: $(ls -lrth ./NASA_access_logs_test)"
# echo "Total number of lines in the resulting file: $(wc -l NASA_access_logs_test)"
# # ls -lrth ./NASA_access_log_1GB

#!/bin/bash

echo "Multipling file size"
for i in {1..4};
do
    echo "Multipling file ${i} times"
    cat /home/hadoop/dataset/nasa_logs_95.csv >> /home/hadoop/dataset/nasa_logs_1GB.csv;
done

echo "Original file size is: $(ls -lrth ./nasa_logs_95.csv)"
echo "Total number of lines in the original file: $(wc -l ./nasa_logs_95.csv)"
echo "------------------------------------------------------------------------------"
echo "Resulting file size is: $(ls -lrth ./nasa_logs_1GB.csv)"
echo "Total number of lines in the resulting file: $(wc -l ./nasa_logs_1GB.csv)"