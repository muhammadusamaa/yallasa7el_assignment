# README

## [YallaSa7el](http://yallasa7el.com) assignment

-YallaSa7el is an assignment which is all about a website with offline db about  places you can have a vacation in, and available room number in each place. So with using a simple form to sign up/log in, Or use Google plus for sgining, any user can search with his favourite destination or a number of room they want.

![Screen Shot](https://github.com/muhammadusamaa/yallasa7el_assignment/blob/master/readme_images/s1.jpg)


 ### Getting Started
 You need to install these packeges before running the server
 - Rails version ->	`5.0.0`
 - Ruby version  ->	`2.6.3`
 - ElasticSearch -> `7.5.1`
 - NodeJS -> `'8.0.0'`


*NOTE*


Please make sure that elasticsearch engine is installed and running before run this app

#### Installation

The follwoing link contains installation steps : https://tecadmin.net/setup-elasticsearch-on-ubuntu/ 

#### To Start elastic search

`sudo systemctl start elasticsearch.service`

#### Steps to running the rails app

 1 - Clone the repo
 
 2 - Run `bundle install`
 
 3 - Add your `postgresql` configurations (username and password) in database.yml
 
 4 - Run `rails db:setup` 
 
 5 - Run `rails db:migrate`
 
 6 - Run `rails s` to run the server

