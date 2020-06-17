require "sinatra"
require "sinatra/json"
require 'json'
require_relative('./lib/sound_library.rb')

set :sound_folder, 'audio_files'

class Cache

  @@sound_library

  def self.init()
    @@sound_library = SoundLibrary.new(Dir["./audio_files/*.wav"])
  end

  def self.sound_library
    @@sound_library
  end

end

configure do
  Cache::init()
end

get '/' do
  'hello this is our sound api :D, here are our currents sounds!'
end

get '/sounds' do
  return JSON.generate(Cache::sound_library.getFiles)
end

get '/rain' do
  send_file File.join(settings.sound_folder, 'rain_1.wav')
end

get '/chickens' do
  send_file File.join(settings.sound_folder, 'chickens_1.wav')
end

get '/cicada' do
  send_file File.join(settings.sound_folder, 'cicada.wav')
end
