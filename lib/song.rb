class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    song = self.new
    song.save
    song
  end

  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def Song.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
    end

    def Song.find_by_name(name)
      @@all.find{|song| song.name == name}
    end

    def Song.find_or_create_by_name(name)
      song = Song.find_by_name(name)
      if song == nil
        return Song.create_by_name(name)
      end
    end

    def Song.alphabetical
    end

    def Song.new_from_filename
    end

    def Song.create_from_filename
    end

    def Song.destroy_all
      self.all.clear
    end





end
