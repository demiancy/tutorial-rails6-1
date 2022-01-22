# tutorial-rails6-1
First tutorial of Ruby on Rails (https://www.youtube.com/watch?v=u2o_new-T0o)

# App
Simple project manager app

# Tasks
Regenerate the database 

    rails dev:build

# Gems
## Mysql2
Add support to mysql database  
### Install
Add the gem to project

    gem install mysql2

## Devise
Add support to authentication users
### Install
Add the gem to project  

    gem install devise

Run the generator  
    rails generate devise:install  

Add the config in the environment  

    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

Add the root path in routes file  

    root to: "home#index"

Add the flash messages in the layout file (application.html.erb) 

    <p class="notice"><%= notice %></p>
    <p class="alert"><%= alert %></p>

Copy the device viewa into the project for customization (optional)   

    rails g devise:views

Add the user model

    rails g device User

## Nested Scaffold
A scaffold command that generates a set of perfectly working nested resource
### Install
Add the gem to project

    gem install nested_scaffold

Use

    rails g scaffold Model attributes

# Notes

