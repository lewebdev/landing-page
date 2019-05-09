require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  send_file 'index.html'
end

get '*' do
  redirect '/'
end