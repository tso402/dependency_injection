require './lib/greeter.rb'
describe Greeter do
  describe '#greet' do
    it 'Greets the user' do
      smily_double = double :smiley, get: ":)"
      greeter = Greeter.new(smily_double)
    expect(greeter.greet).to eq 'Hello :)'
    end
  end
end
