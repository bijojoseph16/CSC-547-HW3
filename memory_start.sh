#!/bin/bash
cat <<EOL >memory_start_core.sh
for i in {0..$1}; do docker exec -d memory\$i mysql --user root --password=admin -e 'show databases;use testdb1; show tables; select * from animals' > bijo;done
EOL
scp -i Core1_rsa memory_start_core.sh core@192.168.1.2:~
ssh -i Core1_rsa core@192.168.1.2 << EGG
chmod +x memory_start_core.sh
./memory_start_core.sh
EGG

