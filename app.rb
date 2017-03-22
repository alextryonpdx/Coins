require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/coins')


get('/') do
  erb(:form)
end


get('/result') do
  @breakdown = params.fetch('total').to_f.coin_breakdown()
# binding.pry
  erb(:result)
end