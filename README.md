<h2>This repo is on a path to being archived, checkout our other resources in github.com/paypal</h2>

# Using the Braintree API in Sinatra to process a subscription payment

This is an example of the Braintree API using the official Ruby SDK in Sinatra to set up a subscription.

This branch includes a lot of files for the purpose of testing. To see a simplified example please switch to the [simplified](https://github.com/commercefactory/braintree-subscription-ruby/tree/simplified) branch.

## Technology

This demo uses

* Ruby 1.9.3 or higher
* The [Sinatra](http://www.sinatrarb.com/) web framework
* The [Braintree Ruby SDK](https://www.braintreepayments.com/docs/ruby)

## Demo

* Visit [9.commercefactory.org](http://9.commercefactory.org)
* Fill in the following credentials:
  * Number: `4111 1111 1111 1111`
  * CVV: `123`
  * Expiration date: `11/2020`
* Click submit
* You will receive a message that says __"Payment Success"__

## Running the demo locally

* Run `bundle` to install all dependencies
* Run `rackup` to start the app
* Visit `http://127.0.0.1:9292/` in your browser
* Proceed as above

## Running the test

* Requirement: [Firefox](http://getfirefox.com) for [Selenium](http://seleniumhq.org)
* Run `bundle` to install all dependencies
* Run `rake` to test the app

## Useful links

* [The Braintree Ruby SDK](https://www.braintreepayments.com/docs/ruby)
* [The Braintree Sandbox with Ruby](https://www.braintreepayments.com/docs/ruby/reference/sandbox)
