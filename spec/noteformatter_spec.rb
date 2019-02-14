require './lib/noteformatter.rb'

describe NoteFormatter do
  describe '#format' do
    it 'Returns a formated note' do
      note = double :note, title: 'James', body: 'James is the best'
      noteformatter = NoteFormatter.new
      expect(noteformatter.format(note)).to eq "Title: James\nJames is the best"
    end
  end
end
