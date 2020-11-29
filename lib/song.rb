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
   Song.new(name)
 end

end
