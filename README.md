# Internet Database Development

在本地创建一个数据库，然后在 `\config\db.php` 中修改数据库信息为自己的信息（`dbname, username, password`），**按序**执行以下指令，进行数据库迁移：

```
yii migrate/up --migrationPath=@vendor/dektrium/yii2-user/migrations
yii migrate
```

将 `yii2basic.sql` 导入建立好的数据库中；

进入 `web` 文件夹，输入如下命令：

`php -S localhost:8080`

打开网址，即可看到初始页面。