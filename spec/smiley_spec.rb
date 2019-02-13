require './lib/smiley.rb'
describe Smiley do
  describe '#get' do
    it 'Returns a smiley' do
      expect(subject.get).to eq ":)"
    end
  end
end
