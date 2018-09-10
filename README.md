# aptiv_api

This is the api side of the Aptiv Inventory Management application and is the CRUD functionality for the web portal. There is also a front side written in Angular at the following url: https://github.com/csteamproject/aptivWebclient which this web portal needs to function properly. Aptiv Inventory Mangement is a Web Portal tool to manage and maintain all ITV assets like test tools, cabinets, SW licenses, Laptops, Desktops, Test Units, screw drivers, multi meters, etc.. The system provides information/ details of the item as owner, project, status, calibration date, capital/expense equipment, etc..

# Table of Contents  

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
    - [Rails](#rails)
        - [Rails Issues and Errors](#rails-issues-and-errors)
- [Contributing](#contributing)
- [Credits](#credits)
- [License](#license)

# Getting Started

1. Run `git clone https://github.com/csteamproject/aptiv_api.git` should copy down the project to your computer.

# Prerequisites

* Ruby version - **5.2.1**
* Rails version - **2.5.1**

* System dependencies<br>
    - NodeJS<br>
    - MySQL
    - RVM `\curl -sSL https://get.rvm.io | bash` or rbenv (see Mac installation guide)


# Installation
These are a more detailed area of steps if the Get Started notes were not detailed enough.

First open a terminal or command prompt in a folder you wish the project to be pulled down to from github.
 Then run the following command:

```
git clone https://github.com/csteamproject/aptiv_api.git
```

This should clone down the project if you have full access to it, if you do not then you have to ask the owner if you can have access to collaborate.


####Linux
You'll need to create a database.yml file under aptiv_api/config/ and connect to a local
mySQL database. The database.yml configuration is as follows:
```angular2html
default: &default
  adapter: mysql2
  database: your_db_name
  host: 127.0.0.1
  username: root
  password: 
  socket: /tmp/mysql.sock
  pool: 5
  timeout: 5000

development:
  <<: *default
```
This will create a database named your_db_name as a local database using **your** root
password for mySQL. Once the database.yml file has been set up, run
```angular2html
bundle install
rails db:create
rails db:migrate
```
You should now be able to run the server with `rails s` and navigate to 0.0.0.0:3000 and
you should see the rails welcome page. Validating passwords and users requires the master.key
to continue this process.

####Mac
Install Homebrew if you haven't already:
```angular2html
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Next use homebrew to install rbenv (A ruby version manager for Mac)
```angular2html
brew update
brew install rbenv ruby-build rbenv-gem-rehash
```

Initialize rbenv by adding the following into your ~/.bashrc file
```angular2html
eval "$(rbenv init -)"
```

Run the following commands in your terminal to install Ruby
```angular2html
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.5.1
rbenv global 2.5.1
ruby -v
```

Finally, install Rails with
```angular2html
gem install rails -v 5.2.1
```

To check your version of Rails and Ruby run the following commands in your terminal.
```angular2html
rails -v
ruby -v
```

To finish setup, you'll need to grab the database.yml file listed under the Linux installation of this guide and configure
your local database appropriately.

# Usage

## Rails
To create the database run this command:
```
rails db:create
```

To run the rails server just run this command:
```
rails s
```

To generate data in seed run this command:
```
rails db:seed
```

To migrate changes to the rails database run the following command:
```
rails db:migrate
```

To open the rails console type in the following command
```
rails c
```
* You can clear the console by pressing `ctrl` + `L`
* You can exit the console by pressing `ctrl` +  `D`

You can generate a scaffold using
```angular2html
rails generate scaffold <MODEL> <PARAMS>
```
You can also substitute scaffold with other commands like
```angular2html
rails g model user name:string
rails g controller user index
```

and so on...

### Rails Issues And Errors

**Error One**

```
Cannot load `Rails.application.database_configuration`: Could not load database configuration. ...
```

• This error just means you do not have the basic config file. To get this contact Robert Dale.
• You can also create your own if you are not connected to this project with 3 different instructions on the format for this file can be found here: https://gist.github.com/erichurst/961978

------

**Error Two**

```
Mysql2::Error::ConnectionError: Can't connect to MySQL server on '127.0.0.1'
```

• This means you need to run your mySQl for your computer. The easiest way to do this is to run the following command in a terminal or command prompt: `mysql.server start`

------

**Error Three**

```
Mysql2::Error::ConnectionError: Access denied for user 'root'@'localhost' (using password: YES)
```

* This means you need to change your root permissions for mysql, run the following command: `mysql -u root -p` see if you can get into your mysql database by typing in the password. If not you might have to reinstall your mysql database, have not found a great way to reset the password just yet. If you can get it then type the following into the now mysql command prompt: 

```
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';
```
* Then you can exit by typing `\q`. After exiting the MySQL Console you can try your mysql command again to see if it will allow you to access the database.


# Contributing

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

The following is a set of guidelines for contributing to the Aptiv API are hosted on GitHub. These are mostly guidelines, not rules. Use your best judgment, and feel free to propose changes to this document in a pull request.

- None so far...

# Credits

* Robert Dale
* Xitlally Salmon
* Victor Lozoya

# License

Copyright (c) 2018 CS448 New Mexico State University

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
