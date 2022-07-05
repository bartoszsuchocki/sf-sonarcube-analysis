if [ $# -ne 5 ]
    then 
        echo $#
        echo 'Connected app client id, certificate private key, integration username, desired org alias and login instance url should be provided'
        exit 1
fi


client_id=$1
private_key=$2
username=$3
org_alias=$4
instance_url=$5

mkdir auth_files
echo $private_key | base64 -d > auth_files/private_key.key
sfdx auth:jwt:grant --clientid $client_id --jwtkeyfile auth_files/private_key.key --username $username --setalias $org_alias --instanceurl=$instance_url