require_relative 'note.rb'
class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
