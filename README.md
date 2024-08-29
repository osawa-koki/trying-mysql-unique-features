# trying-mysql-unique-features

🎳🎳🎳 MySQLに固有の機能を試してみる！  

あまり好まれない？SQL方言だが、めっちゃ便利！！！  
積極的に方言を使う必要はないかもしれないが、特定のケースではかなりの効果を発揮すると思われる。  

<https://dev.mysql.com/doc/>  

## 実行方法

```shell
docker compose build
docker compose up -d

docker exec db mysql -u root -proot -e "DROP USER IF EXISTS 'user'@'%';"
docker exec db mysql -u root -proot -e "CREATE USER 'user'@'%' IDENTIFIED BY 'password';"
docker exec db mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' WITH GRANT OPTION;"
docker exec db mysql -u root -proot -e "FLUSH PRIVILEGES;"

chmod +x ./entrypoint.sh
./entrypoint.sh
```
