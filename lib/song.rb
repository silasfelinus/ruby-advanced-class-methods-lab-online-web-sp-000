class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name="")
    @name = name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = Song.new
    new_song.save
    new_song
end

  def self.new_by_name(name)
    Song.new(name)
end

 def self.create_by_name(name)
   new_song = Song.new(name)
   new_song.save
   new_song
 end

def self.find_by_name(name)
  self.all.find{|song| song.name == name}
end

def self.find_or_create_by_name(name)
  if self.find_by_name(name) == nil
    #self.create_by_name(name)
  else
    #self.find_by_name(name)
  end

end
