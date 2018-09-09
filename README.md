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

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Installation
These are a more detailed area of steps if the Get Started notes were not detailed enough.

1. First open a terminal or command prompt in a folder you wish the project to be pulled down to from github.
2. Then run the following command:

```
git clone git clone https://github.com/csteamproject/aptiv_api.git
```

This should clone down the project if you have full access to it, if you do not then you have to ask the owner if you can have access to collaborate.

3. After the project finishes cloning down inside your terminal or command prompt you can `cd aptivWebclient` so that you are within the cloned project. There you can run the following commands:

```
sudo gem install rails
```

```
bundle install
```


This should get all the packages not mentioned in the prerequisites and update any old packages that have fallen behind in age.


--Output--
NOT IMPLEMENTED YET

# Usage

## Rails
To create the database run this command:
```
rake db:create
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

