# /bin/sh
cd /var/www
echo 1 >> REVISION.txt
echo $APPLICATION_NAME >> REVISION.txt
echo $DEPLOYMENT_ID >> REVISION.txt
echo $DEPLOYMENT_GROUP_NAME >> REVISION.txt
echo $DEPLOYMENT_GROUP_ID >> REVISION.txt
echo $LIFECYCLE_EVENT >> REVISION.txt

