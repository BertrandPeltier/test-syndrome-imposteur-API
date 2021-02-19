# Création de la DATABASE (root) :

```sql
CREATE DATABASE db_name;
```

# Création du USER

```sql
CREATE USER 'user_name'@'localhost' IDENTIFIED BY 'user_password';
```

# Attribution des PRIVILEGES

```sql
use db_name;
GRANT ALL PRIVILEGES ON db_name.* TO 'user_name'@'localhost';
FLUSH PRIVILEGES;
```

# Import des DATA

```shell
mysql -u user_name -p dn_name < path/to/data.sql
```