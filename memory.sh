#!/bin/sh
cat <<EOL > memory_exe.sh
for i in {0..$1}; do docker run -itd --name=memory\$i my_sql_image; done
for i in {0..$1}; do docker exec memory\$i bash -c 'service mysql start ; service mysql status'; done
EOL
scp -i Core1_rsa memory_exe.sh core@192.168.1.2:~
ssh -i Core1_rsa core@192.168.1.2 << EGG
chmod +x memory_exe.sh
./memory_exe.sh
EGG
