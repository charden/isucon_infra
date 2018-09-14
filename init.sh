# cat ./init.sh | ssh isucon /bin/bash

chsh -s /bin/bash
sudo chsh -s /bin/bash
setenforce 0
sudo mkdir -p /home/isucon/.ssh
sudo chown -R isucon:isucon /home/isucon/.ssh/
sudo tee -a /home/isucon/.ssh/authorized_keys << _EOS > /dev/null
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA9Iiry9Lmha2SCISbnww8K7w+muRkPVfHOusO7eEOPX2umRwgaFJb5MYb662zdMLGVJXTUkpXGN5G4DxfWqIQf4VcrjBJXNVaFcGQKsqg7ss0b9kR7cex5fSD3flwFyI//FWY5Q+N74OAiG+7VwQw6n9J18qk2tEYYZs6n1lOSMpENdAlV+Gad5UZPYCcNyWbnkjpSwTcaM3KKenvsx3MHXrSYEOWED8nxzueTLto+ky4WmAAU8dC2tcOmVgVeGR5+g7OjfQmIRxSTLWxf2TKcztGxGdygsqjnUGuFbxoyybPQM4I4eHce1+e02ZXDMRuoFFocV8Gux7BX0FqX/uf licht@Mac.local
_EOS
chmod 700 /home/isucon/.ssh
sudo chmod 600 /home/isucon/.ssh/authorized_keys

sudo mysqldump -uroot --all-databases > /tmp/mysql.dump

