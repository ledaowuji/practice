#!/bin/bash  
  

function ret_value()
{
    return 1
}

for ((i=1; i<=5; i++))  
do  
  ret_value
  ERR=$?
  if [ $ERR = 0 ]; then
    break
  fi
  sleep 3 
done

if [ $ERR = 1 ]; then
  echo "bad end"
fi

echo "test end"