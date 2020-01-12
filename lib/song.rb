class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new 
    @@all << song
    song
  end
  
  def self.new_by_name(name)
<<<<<<< HEAD
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name(name)
     @@all.find{|song| song.name == name}
=======
    song = self.new_by_name(name)
>>>>>>> c5306543d84fcfa94d82fca2bd1d98e35e5d9508
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ||
    self.create_by_name(name)
  end
  
  def self.alphabetical
    @@all.sort_by {|word| word.name}
  end
  
  def self.new_from_filename(name)
  song = self.new
  song.name = (name.split(" - ")[1].chomp(".mp3"))
  song.artist_name = (name.split(" - ")[0])
  song
  end
  
  def self.create_from_filename(name)
    song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    @@all << song
  end
  
  def self.destroy_all
    @@all.clear
  end
end
