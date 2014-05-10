require 'sinatra'
require 'braintree'
require_relative 'helpers/pretty_print.rb'

helpers Demo::PrettyPrint

get '/' do
  configure
  erb :index
end

post '/process' do
  configure

  result = Braintree::Customer.create(
    credit_card: {
      number: params[:number],
      cvv: params[:cvv],
      expiration_date: params[:expiration_date],
      options: {
        verify_card: true
      },
    }
  )

  if result.success?
    @card = result.customer.credit_cards.first

    result = Braintree::Subscription.create(
      payment_method_token: @card.token,
      plan_id: params[:plan]
    )

    if result.success?
      @subscription = result.subscription
      erb :process
    else
      'Could not create the subscription'
    end
  else
    'Could not create the customer'
  end
end

private

def configure
  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = 'ffdqc9fyffn7yn2j'
  Braintree::Configuration.public_key = 'qj65nndbnn6qyjkp'
  Braintree::Configuration.private_key = 'a3de3bb7dddf68ed3c33f4eb6d9579ca'
end