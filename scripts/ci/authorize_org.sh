if [ $# -ne 2 ]
    then 
        echo 'Authorization URL and Org Alias should be provided!'
        exit 1
fi

authorization_url=$1
org_alias=$2

mkdir auth
echo $authorization_url > auth/auth_org_file.txt
sfdx auth:sfdxurl:store -f auth/auth_org_file.txt -a $org_alias

echo "Authorized $org_alias successfully"