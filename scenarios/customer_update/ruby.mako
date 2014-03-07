% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.fetch('/customers/CU5YopHN07Ul5XQnILUifeQT')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007ff2bdac6e78
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-03-06T19:23:15.982885Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU5YopHN07Ul5XQnILUifeQT",
   "id"=>"CU5YopHN07Ul5XQnILUifeQT",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-03-06T19:23:20.140160Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007ff2bdabe8e0/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007ff2bdab78b0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007ff2bdaafd40/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007ff2bdaad658/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007ff2bdaa7370/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007ff2bdaa65b0/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007ff2bda9e3b0/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007ff2bda9da78/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007ff2bda940b8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007ff2bc8ccd30/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007ff2bc8c5440/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007ff2bc8c5ff8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
