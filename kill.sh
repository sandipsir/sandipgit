ps -ef | grep flasksqlapp | grep -v grep | awk '{print $2}' | xargs kill
