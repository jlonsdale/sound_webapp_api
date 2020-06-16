require "wavefile"
include WaveFile

class WavReader
  def initialize(fileName)
    @fileName = fileName
  end

  def printName
    @fileName
  end
end
