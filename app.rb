require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/coins')


get('/') do
  erb(:form)
end


get('/breakdown') do
  @total = fetch.params('total')
  @breakdown = @coords.coins?
  erb(:result)
end