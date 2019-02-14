require './lib/diary.rb'
describe Diary do
  it 'adds an entry to its entries'do
  title = double :title
  body = double :body
  entry_double = double :entry, title: title, body: body
  entry_class_double = double :entry_class, new: entry_double
  diary = Diary.new(entry_class_double)
  diary.add(title,body)
  expect(diary.instance_variable_get(:@entries)).to include entry_double
  end

  it 'Returns the list of titles when index is called' do
    title = double :title
    body = double :body
    entry_double = double :entry, title: title, body: body
    entry_class_double = double :entry_class, new: entry_double
    diary = Diary.new(entry_class_double)
    diary.add(title,body)
    diary.add(title,body)
    diary.add(title,body)
    diary.add(title,body)
    expect(diary.index).to eq "#{title}\n#{title}\n#{title}\n#{title}"
  end
end
