# Blog Service App

A prototype of the timeline feature related to the blogging service.

As this is a prototype there are user authentication. The purpose of this prototype is to demo the timeline functionality only.

As a user:

* You should be able to post a message to the timeline
* You should be able to see all messages on the timeline
* You should be able to delete a message from the timeline


## Setup

In order to setup, run the following commands in your console and navigate to localhost:3000 in your browser.

`rake db:create`

`rake db:migrate`

`bundle install`

`rails s`


## Running Tests

`rake db:migrate RAILS_ENV=test`

`rspec spec`
