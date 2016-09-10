# /bin/sh
cd /var/www
SECRET_KEY_BASE=hoge /home/ec2-user/.rbenv/bin/rbenv exec bundle exec puma -e production -d
