require './lib/sayhellotomylittlefriend.rb'
describe SayHelloToMyLittleFriend do
  it 'When run it returns an email address and body' do
  message_double = double :message, send: 'You are a dude'
  email_double = double :email, message: message_double
  sayHello = SayHelloToMyLittleFriend.new
  expect(sayHello.run(email_double)).to eq 'You are a dude'
  end
end
