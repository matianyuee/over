#eHR


###初始化数据

```bash
bundle install
cp config/secrets.yml.example config/secrets.yml
cp config/database.yml.example config/database.yml
# 更新config/database.yml
rake db:create
rake db:migrate
rake db:seed
```


### 登录

Email: `admin@ebuychem.com`
密码:  `admin123`
