require('sinatra')
require('sinatra/reloader')
require('./lib/dictionary')
also_reload('lib/**/*.rb')

get('/') do
  @dictionary_list = Word.all()
  erb(:index)
end

get('/new_word_form') do
  erb(:new_word_form)
end

post('/new_word') do
  word = params.fetch('new_word')
  dictionary_word = Word.new(word)
  dictionary_word.save()
  @dictionary_list = Word.all()
  erb(:index)
end

get('/:id') do
  erb(:word_definition)
end

post('/new_definition') do
  definition = params.fetch('new_definition')
  word_definition = Definition.new(definition)
  erb(:word_definition)
end
