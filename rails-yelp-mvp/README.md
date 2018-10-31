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

# Making the app

We need to create an Yelp like in Rails, so:

### Model
A restaurant must have at least a name, an address and a category.

`rails g model Restaurant name:string  address:string category:string phone_number:string`

`rails generate scaffold Restaurant name:string  address:string category:string phone_number:string`



