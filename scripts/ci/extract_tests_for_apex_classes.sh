if [ $# -ne 1 ]
    then 
        echo 'Deployment folder path should be provided!'
        exit 1
fi

deployment_folder_path=$1
cat $deployment_folder_path/classes/* | grep '\[UnitTest\]' | sed -e \s/\\[UnitTest\\]\\-//g | sed -e \s/\\[UnitTest\\]//g | sed -e \s/-//g | sed -e \s/*//g | sed -e \s/\\/\\///g |  sed -e 's/^ *//;s/ *$//'  | sort | uniq | paste -d ',' -s 