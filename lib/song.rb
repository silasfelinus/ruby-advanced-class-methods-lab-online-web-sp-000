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
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.new_from_filename(filename)
    self.new_by_name(filename.split(/-/)[1].strip
  end

  def self.create_from_filename(filename)
    self.create_by_name(filename[0..-4])
  end

  def self.destroy_all
    @@all = []
  end

  def self.parse_filename(filename)
    #parse filename and return array of artist and song title
    parsed_array = []
    parsed_array << filename.split(/-/)[1].strip]
    parsed_array << filename.split(/"- "/, 2).last[0..-4]
    parsed_array
  end

end
