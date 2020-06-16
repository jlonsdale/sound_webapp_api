require "sinatra"
require "sinatra/json"
require_relative('./wav_reader.rb')

get '/' do
  # json :test => 'jess'
    "Hello World!"
end


get '/rain' do
  test = WavReader.new('test')
  return test.read
end
