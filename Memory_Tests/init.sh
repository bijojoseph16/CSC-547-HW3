#!/bin/bash
for i in {0..14}; do docker exec -d data$i mysql --user root --password=admin -e 'show databases;use testdb1; show tables; select * from animals' > /bijo; done
