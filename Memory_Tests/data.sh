#!/bin/sh
for i in {0..14}; do docker run -itd --name=data$i my_sql_image; done
for i in {0..14}; do docker exec data$i bash -c 'service mysql start ; service mysql status'; done
