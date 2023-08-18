# Postgresql commands

## Accessing postgres prompt

```bash
$ sudo -i -u postgres
  postgres@manohar-MacBookPro:~$ psql
  psql (15.4 (Ubuntu 15.4-0ubuntu0.23.04.1))
  Type "help" for help.

  postgres=#
```

## exit from postgres prompt

```bash
postgres=# \q
```

## Access postgres prompt without switching accounts

```bash
sudo -u postgres psql
could not change directory to "/home/manohar": Permission denied
psql (15.4 (Ubuntu 15.4-0ubuntu0.23.04.1))
Type "help" for help.

postgres=#
```

## create new user and change password

```bash
$ sudo -i -u postgres
postgres@manohar-MacBookPro:~$ createuser --interactive
Enter name of role to add: crm
Shall the new role be a superuser? (y/n) y
postgres@manohar-MacBookPro:~$ psql
psql (15.4 (Ubuntu 15.4-0ubuntu0.23.04.1))
Type "help" for help.

postgres=# alter user crm with password '<new password>';
ALTER ROLE
postgres=# 

```



## References

1. https://freegistutorial.com/step-by-step-guide-to-install-postgresql-on-ubuntu-23-04/

2. https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-20-04#accessing-a-postgres-prompt-without-switching-accounts
