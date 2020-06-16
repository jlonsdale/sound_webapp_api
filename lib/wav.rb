require "wavefile"
include WaveFile

class Wav
  def initialize(fileName)
    @fileName = fileName
  end
end
