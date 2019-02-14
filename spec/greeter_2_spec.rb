require './lib/greeter_2.rb'
describe Greeter_2 do
it 'puts the provided name when provided a name' do
name_double = 'James'
expect(STDOUT).to receive(:puts).with("What is your name?")
expect(STDOUT).to receive(:puts).with('Hello, James')
subject.greet(name_double)

end


end
