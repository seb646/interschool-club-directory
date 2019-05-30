<div align="center"><a href="http://www.interschool.org/"><img src="http://seb646.com/images/interschool.png" alt="Icarus Labs" width="350" style="margin-bottom:20px"/></a> 

[![Version](https://img.shields.io/badge/Download-v0.1.0-brightgreen.svg "Version")](https://github.com/seb646/interschool-club-directory/releases/tag/v0.1.0) [![MIT License](https://img.shields.io/badge/License-MIT-blue.svg "MIT License")](https://github.com/seb646/interschool-club-directory/blob/master/LICENSE) [![Support](https://img.shields.io/badge/Support-red.svg "Support")](#)

The New York Interschool Club Directory is an open source project built to connect students with clubs and events witin the cosortium.</div><br>

## Getting Started

### For Developers: 
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
__Step 8:__ Start the Rails application:
```
$ rails s -b $IP -p $PORT
```
_NOTE: Whenever you start the application, make sure your MySQL database is running._
<br>

## Credits
Copyright (c) [New York Interschool](http://www.interschool.org/), 2019. Released under the [MIT license](https://github.com/icaruslabs/icarus-desktop/blob/master/LICENSE). Originally created by [Sebastian Rodriguez](https://seb646.com) using [Ruby on Rails](https://rubyonrails.org/).

### Contributors
* [Sebastian Rodriguez](https://github.com/seb646) – The Browning School
* [Aaron Grill](https://github.com/aarongrill) – The Browning School 

Have an idea for a new feature? Found a bug in the software? Contact your school's Computer Science Department Chair or Dean of Students to learn how to contribute. 
