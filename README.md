# Internet Database Development

首先在本地创建一个数据库，然后在 `\config\db.php` 中修改数据库信息为自己的信息（`dbname, username, password`），**按序**执行以下指令，进行数据库迁移：

```
yii migrate/up --migrationPath=@vendor/dektrium/yii2-user/migrations
yii migrate
```

直接打开会提示缺少 vendor 资源包，如果没有 [Composer](https://getcomposer.org/) 工具，需要遵循 [getcomposer.org](https://getcomposer.org/doc/00-intro.md#installation-nix) 中的指令安装；安装完毕后，在目录下执行如下命令即可（需要管理员权限），可能需要花费一段时间：

```
composer config -g repo.packagist composer https://mirrors.cloud.tencent.com/composer/
composer install
```

进入 `web` 文件夹，输入如下命令：

`php -S localhost:8080`

打开网址，即可看到初始页面。