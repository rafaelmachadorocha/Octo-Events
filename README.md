# Octo Events  

Octo Events is an application that listens to Github Events via webhooks and expose by an api for later use.  


-----------------------------------------

# Requirements

This code was developed and tested with 

Ruby 2.6.6  
Rails 6.0.3.4   
PostgreSQL 12.4

-----------------------------------------

# Setup  

Inside project directory run:  


```
	$ gem install bundler
	$ bundle install
	
	$ yarn install OR
	$ npm install

	$ rails db:create
	$ rails db:migrate
	
```

---------------------------------------  


# Tests

Tests were implemented using Minitest Gem.  


Run the unit tests on models with: 


```
	$ rails test:models
```
------------------------------------------  

Run the unit tests on controllers with: 


```
	$ rails test:controllers
```
------------------------------------------  

# API Documentation

You can see more detailed examples of requests  in: [Postman Octo Events Documentation](https://documenter.getpostman.com/view/13107448/TVYKZG3g#intro)
