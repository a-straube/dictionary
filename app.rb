require('sinatra')
require('sinatra/reloader')
require('./lib/dictionary')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/new_word_form') do
  erb(:new_word_form)
end
