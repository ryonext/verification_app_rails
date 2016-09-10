# /bin/sh
cd /var/www
/home/ec2-user/.rbenv/bin/rbenv exec bundle exec rake db:migrate RAILS_ENV=production
SECRET_KEY_BASE=hoge /home/ec2-user/.rbenv/bin/rbenv exec bundle exec puma -e production -d
