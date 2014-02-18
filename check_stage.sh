#!/bin/bash
if [[ $(eval echo ~stseira) == "/home/foo" ]]
    then
        log_dir='/home/foo/log'
        web_dir='/home/foo/web'
elif [[ $(eval echo ~stseira) == "/home/bar" ]]
    then
        log_dir='/home/foo/log'
        web_dir='/home/foo/web'
fi

stage=`grep -Eo "(dev|staging|production)" ${web_dir}/stage.php`
echo $stage

