#!/bin/bash

for file in `ls ./sql/*.sql`; do
  echo "executing $file"
  echo ""
  docker exec -i db mysql --defaults-extra-file=/etc/mysql/conf.d/my.conf db < $file
  echo ""
  echo "done!!!"
done
