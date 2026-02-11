#!/bib/bash
#DATE=$(date)
START_TIME=$(date +%s)
sleep 10 
END_TIME= $(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "Scripts executed in :$TOTAL_TIME seconds"

#echo "Time stamp executed : $DATE

