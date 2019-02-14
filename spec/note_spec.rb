require './lib/note.rb'
require './lib/noteformatter.rb'

describe Note do
  describe '#display' do
    it 'displays a formatted title and body' do
      formatter = double :formatter, format: "Title: James\nJames is the best"
      note = Note.new('James', 'James is the best', formatter)
      #allow(NoteFormatter).to receive(:format).and_return("Title: James\nJames is the best")
      expect(note.display).to eq "Title: James\nJames is the best"
    end
  end
end
