#!/bin/bash
echo "git pill"
git pull origin master
echo 'Rotate log file!'
./rotate.sh
#echo 'Updateed config file!'
# sudo cp "$HOME/nginx.conf" /etc/nginx/nginx.conf
# sudo cp "$HOME/redis.conf" /etc/redis/redis.conf
# sudo cp "$HOME/my.conf" /etc/mysql/my.cnf
echo 'Update service unit file...'
sudo systemctl daemon-reload
cd /home/isucon/isubata/webapp/ruby
/home/isucon/.rbenv/2.5.1/bin/bundle install
cd "$HOME"
echo 'Restart services...'
sudo systemctl restart nginx.service
sudo systemctl restart isubata.ruby.service
echo 'deploy end!'