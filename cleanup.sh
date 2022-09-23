#!/bin/bash
total=`ls /home/ubuntu/cleanupd | wc -l`
old_files=`$total - 10`
if [ $old_files -gt 0 ];then
	ls -rt /home/ubuntu/cleanupd | head -$old_files | rm -rf
	echo "Deleted $old_files number of files from /home/ubuntu/cleanupd directory as a part of clean up" | mail -s "Cleanup Notification" gururaj1119@gmail.com
else
	echo "no files to delete in /home/ubuntu/cleanupd directory" | mail -s "Cleanup Notification" gururaj1119@gmail.com
fi

