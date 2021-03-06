% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

credit = Balanced::Credit.fetch('/credits/CRzQD72qlmLMGqdvPapoQd0')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fc09cc17938
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-01T16:38:48.677643Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CRzQD72qlmLMGqdvPapoQd0",
   "id"=>"CRzQD72qlmLMGqdvPapoQd0",
   "links"=>
    {"customer"=>"CUb38G1IRIovbbaJlMMKUqG",
     "destination"=>"BAd2UKqX83C1p7fhmMx5pmW",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR699-984-2787",
   "updated_at"=>"2014-04-01T16:38:54.053996Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fc09cc15d18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fc09cc14058/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fc09cc0d6e0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09cc0cce0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09cc06ac0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
