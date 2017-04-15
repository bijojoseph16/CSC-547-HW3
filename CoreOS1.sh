#!/bin/bash
ssh -i Core1_rsa core@192.168.1.2 << EGG
top -b | head -n 4 > /tmp/script/test2 & >/dev/null
EGG
ssh -i Core1_rsa core@192.168.1.2 << EGGS
docker stats > /tmp/script/test1 & > /dev/null
EGGS
scp -i Core1_rsa core@192.168.1.2:/tmp/script/test2 .
scp -i Core1_rsa core@192.168.1.2:/tmp/script/test1 .





