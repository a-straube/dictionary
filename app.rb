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
  @dictionary_word = Word.new(word)
  @dictionary_word.save()
  @dictionary_list = Word.all()
  erb(:index)
end

get('/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_definition)
end

post('/new_definition') do
#  user_definition = params.fetch('new_definition')
#  @word_definition = Definition.new(user_definition)
#  @word_definition.save()
#  @added_word = Word.find(params.fetch('word_id').to_i())
#  @added_word.add_definition(@word_definition)
  erb(:word_definition)
end
