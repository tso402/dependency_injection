require './lib/entry.rb'
describe Entry do
it 'stores the provided title' do
  title = 'Title'
  body = 'Body'
  entry=Entry.new(title,body)
  expect(entry.title).to eq title
end

it 'stores the provided body' do
  title = 'Title'
  body = 'Body'
  entry=Entry.new(title,body)
  expect(entry.body).to eq body
end

end
