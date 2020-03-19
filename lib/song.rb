class Song
  attr_accessor :name, :artist_name
  @@all =[]


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end
   def self.new_by_name(name)
       song = self.new
       song.name=name
       song
   end

   def self.create_by_name(name)
     song = self.new
     song.name=name
     song.save
     song
   end
   def self.find_by_name(name)
      @@all.find do |song|
        song.name == name
      end
   end

   def self.find_or_create_by_name(name)

    if self.find_by_name(name)
        @@all[0]
    else
      self.create_by_name(name)
    end

   end

   def self.alphabetical
      @@all.sort_by { |word|
          word.name
        }
   end
   def self.new_from_filename(filename)
      puts filename.split('-').spli('.')

     #puts   filename[0]
    #puts    songname = filename[1].split(".")


   end

end
