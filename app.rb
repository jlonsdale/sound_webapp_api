require "sinatra"
require "sinatra/json"
require_relative('./wav_reader.rb')

set :sound_folder, 'audio_files'


get '/' do
  'hello this is our sound api :D'
end

get '/rain' do
  send_file File.join(settings.sound_folder, 'rain_1.wav')
end

get '/chickens' do
  send_file File.join(settings.sound_folder, 'chickens_1.wav')
end
