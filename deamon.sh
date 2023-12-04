#!/bin/bash


#这个脚本用来测试 shell脚本中，如果使用deamon 进程，deamon进程的返回值如果是非0，主进程是否能够接受到这个非0值

function test_deammon()
{
    child_deamon &
    ERR=$?
    pid=$!
    echo $ERR    
    wait $pid
    ERR=$?
    echo $ERR
}

function child_deamon()
{
    sleep 1
    echo "test child"
    return 1
}

test_deammon