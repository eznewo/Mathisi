# this script creates 12 lesson folders and 12 task files inside each folder
for n in {1..12}; 
do mkdir lesson_$n; 
  for a in {1..12};
  do touch lesson_$n/task_$a; 
  done
done
