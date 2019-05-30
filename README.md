<div align="center"><div style="margin-bottom: 30px"><a href="http://www.interschool.org/"><img src="http://seb646.com/images/interschool-padding.png" alt="Icarus Labs" width="350"/></a></div>

[![Version](https://img.shields.io/badge/Version-v0.1.0-brightgreen.svg "Version")](#) [![Ruby](https://img.shields.io/badge/Ruby-v2.4.0-red.svg "Ruby Version")](https://www.ruby-lang.org/en/news/2016/12/25/ruby-2-4-0-released/) [![MIT License](https://img.shields.io/badge/License-MIT-blue.svg "MIT License")](https://github.com/seb646/interschool-club-directory/blob/master/LICENSE)

The New York Interschool Club Directory is an open source project built to connect <br> students with clubs and events within the cosortium.<br>

[Report a Bug](https://github.com/seb646/interschool-club-directory/issues/new)</div><br>

## Getting Started
We recommend testing and developing using [AWS Cloud9](https://aws.amazon.com/cloud9). The documentation below assumes you are working in that environment. 

__Step 1:__ Install the dependencies located in the project's [Gemfile](https://github.com/seb646/interschool-club-directory/blob/master/Gemfile):
```
$ bundle install
```
__Step 2:__ Start the MySQL server:
```
$ sudo service mysql start
```
__Step 3:__ Enter the MySQL terminal (after you setup your user in Step 4, we recommend using those credentials to access the MySQL terminal):
```
$ mysql -u root -p
```
__Step 4:__ Create a MySQL user (don't forget to change `username` and `password`):
```
mysql> CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
```
__Step 5:__ Create a MySQL database:
```
mysql> CREATE DATABASE databse_name;
```
__Step 6:__ Link your user to your MySQL database (don't forget to change `username` and `password` to match your configuration in Step 4):
```
mysql> GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'password';
```
__Step 7:__ Refresh your MySQL privilages:
```
mysql> FLUSH PRIVILEGES;
```
__Step 7:__ Configure the application for your MySQL database. Edit the [database.yml](https://github.com/seb646/interschool-club-directory/blob/master/config/database.yml) file located in the `config` directory (don't forget to change `MYSQL_DATABASE`, `MYSQL_USERNAME`, `MYSQL_PASSWORD` to match your configuration in Steps 4 and 5):
```
20   development:
21     <<: *default
22     database: MYSQL_DATABASE
23     host: <%= ENV['IP'] %>
24     username: MYSQL_USERNAME
25     password: MYSQL_PASSWORD
```
__Step 8:__ Migrate the database:
```
$ rake db:migrate
```
__Step 9:__ Start the Rails application:
```
$ rails s -b $IP -p $PORT
```
_NOTE: Whenever you start the application, make sure your MySQL database is running._

### Helpful Commands:
__View Routes__:
```
$ rake routes
```
__Create a new Controller__: 
```
$ rails g controller User
```
__Create a new Model__: 
```
$ rails g model Post title:string body:text
```
__Create a new migration__: 
```
$ rails g migration add_user_id_to_comments user_id:reference
```
<br>

## Credits
Copyright (c) [New York Interschool](http://www.interschool.org/), 2019. Released under the [MIT license](https://github.com/icaruslabs/icarus-desktop/blob/master/LICENSE). Created by [Sebastian Rodriguez](https://seb646.com) using [Ruby on Rails](https://rubyonrails.org/), maintained by various student and faculty contributors.

### Contributors
* [Sebastian Rodriguez '19](https://github.com/seb646) – The Browning School
* [Aaron Grill](https://github.com/aarongrill) – The Browning School 
* Melodie Ting – The Browning School 

Have an idea for a new feature? Want to help maintain the software? Contact your school's Computer Science Department Chair or Dean of Students to learn how to contribute. We encourage and depend on student and faculty participation.
