for i in {0..5}; do docker exec -d memory$i mysql --user root --password=admin -e 'show databases;use testdb1; show tables; select * from animals' > bijo;done
