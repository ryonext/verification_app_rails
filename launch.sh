# /bin/sh
cd /var/www
/home/ec2-user/.rbenv/bin/rbenv exec bundle exec rake db:migrate RAILS_ENV=production
count=`ps -ef | grep puma | grep -v grep | wc -l`
if [ $count = 0 ]; then
  # start
  SECRET_KEY_BASE=hoge /home/ec2-user/.rbenv/bin/rbenv exec bundle exec puma -e production -d
else
  # reload
  /home/ec2-user/.rbenv/bin/rbenv exec bundle exec pumactl restart
fi
