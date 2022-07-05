if [ $# -ne 4 ]
    then 
        echo $#
        echo 'Connected app client id, certificate private key, integration username and desired org alias should be provided'
        exit 1
fi


client_id=$1
private_key=$2
username=$3
org_alias=$4

mkdir auth_files
echo $private_key | base64 -d > auth_files/private_key.key
sfdx auth:jwt:grant --clientid $client_id --jwtkeyfile auth_files/private_key.key --username $username --setalias $org_alias