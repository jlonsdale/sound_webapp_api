require "sinatra"
require "sinatra/json"
require_relative('./wav_reader.rb')

get '/' do
  json :test => 'jess'
end


get '/rain' do
  test = WavReader.new('test')
  return test.printName
end
