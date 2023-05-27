# README

This README would normally document whatever steps are necessary to get the
application up and running.

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

# Stuffs that I learned
## https://railsguides.jp/getting_started.html
- bundle install --gemfile 
  - to install dependencies
- ruby bin/rails server or bin/rails server 
  - to run server
- bin/rails generate controller ${App name} index --skip-routes
  - To generate controller
- root "${path}"
  - To change the root of the website
- bin/rails generate model ${Model Name} title:string body:text
  - Example of generating model
- ruby bin/rails db:migrate
  - To migrate
- ruby bin/rails console
  - To run ruby console
  - todo = Todo.new(title:"Walk Dogs")
    - To initialize Todo object
  - todo.save
    - To save object
  - Todo.{operation}
    - To do various thing with database
- Instance variable (variable that starts with @) can be declared in controller, but can be used in view
- erb = Embedded ruby
  - <% %> => Evaluate the ruby written inside
  - <%= %> => Evaluate the ruby written inside AND return output
- Parameter Route
  - "/todo/:id" -> params[:id] to access in controller and store in instance variable
- There is some system called resources for routing method, which helps you to combine all CRUD method to one
  - Seems very powerful and handy
- Form builder to write form with minimum codes
  - Helper method: form_with
- String Parameter
  - Add "Strong type" to params, to filter params and not allow user to add field in params
- Validation
  - Add to ruby file under models/ dir
- 