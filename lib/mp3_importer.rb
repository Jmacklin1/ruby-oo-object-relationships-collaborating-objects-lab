
class MP3Importer
    
  attr_reader :path

def initialize(filepath)
@path = filepath
end
def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file ==  "." || file == ".."}
end

def import
        files.each{|f| Song.new_by_filename(f)}
      
    end


#def music_importer
    #files = Dir.('"./spec/fixtures/mp3s').import
#end
##def files
    #Dir.chdir(@path) do | path |
       # Dir.glob("*.mp3")
      #end   end

end