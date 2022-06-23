if [ $# -ne 1 ]
    then 
        echo 'SFDX download url should be provided.'
        exit 1
fi

sfdx_download_url=$1

if [[ $sfdx_download_url != *tar.xz ]]
    then
        echo 'tar.xz archive url should be provided.'
        exit 1
fi

archive_folder_name=${sfdx_download_url//*\/}
wget $sfdx_download_url
mkdir ~/sfdx
tar xJf $archive_folder_name -C ~/sfdx --strip-components 1
echo "Installed SFDX successfully. Current version: `~/sfdx/bin/sfdx version`"

echo y | ~/sfdx/bin/sfdx plugins:install sfdx-git-delta
echo "Installed sfdx-git delta plugin successfully."