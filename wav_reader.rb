require "wavefile"
require 'wav-file'
include WaveFile

class WavReader
  def initialize(fileName)
    @fileName = fileName
  end

  def printName
    @fileName
  end

  def read
    File.open("./audio_files/rain_1.wav", "rb")
  end


end
