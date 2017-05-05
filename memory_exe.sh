for i in {0..5}; do docker run -itd --name=memory$i my_sql_image; done
for i in {0..5}; do docker exec memory$i bash -c 'service mysql start ; service mysql status'; done
