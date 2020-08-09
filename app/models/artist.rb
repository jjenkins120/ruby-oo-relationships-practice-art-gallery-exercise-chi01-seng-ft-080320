class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    all_artist_paintings = Painting.all.select do |painting_instance|
      painting_instance.artist_instance == self
    end
    all_artist_paintings.map do |artist_painting_instance|
      artist_painting_instance.title
    end
  end

  def galleries 
    all_artist_paintings = Painting.all.select do |painting_instance|
      painting_instance.artist_instance == self
    end
    all_artist_paintings.map do |artist_painting_instance|
      artist_painting_instance.gallery_instance.name
    end
  end

  def cities
    all_artist_paintings = Painting.all.select do |painting_instance|
      painting_instance.artist_instance == self
    end
    all_artist_paintings.map do |artist_painting_instance|
      artist_painting_instance.gallery_instance.city
    end
  end

  def self.total_experience
    array_of_experience = Artist.all.map do |artist_instance|
      artist_instance.years_experience
    end
    array_of_experience.sum
  end


  #STUCK ON THIS METHOD
  def self.most_prolific
    artist_frequency = Painting.all.map do |painting_instance|
      painting_instance.artist_instance
    end
    instance_hash = {}
    artist_frequency.each do |instance| 
      if instance_hash[instance] == nil
        instance_hash[instance] = 1
      else
        instance_hash[instance] += 1
      end
    end
    instance_hash
  end

  def create_painting(title, price, gallery_instance)
    Painting.new(title, price, self, gallery_instance)
  end

end



=begin
ARTIST

XArtist.all
  Returns an array of all the artists
XArtist#paintings
  Returns an array all the paintings by an artist
XArtist#galleries
  Returns an array of all the galleries that an artist has paintings in
XArtist#cities
  Return an array of all cities that an artist has paintings in
XArtist.total_experience
  Returns an integer that is the total years of experience of all artists
***Artist.most_prolific
  ****Returns an instance of the artist with the highest amount of paintings per year of experience.
XArtist#create_painting
  iven the arguments of title, price and gallery, creates a new painting belonging to that artist
=end