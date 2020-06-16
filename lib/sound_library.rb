class SoundLibrary

  def initialize(files)
    @files= files.map{ |x| [File.basename(x, ".wav"), x] }.to_h
    @temp_library = []
  end

  def getFiles
    @files
  end

end
