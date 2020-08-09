class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    all_gallery_paintings = Painting.all.select do |painting_instance|
      painting_instance.gallery_instance == self
    end
    all_gallery_paintings.map do |gallery_painting_instance|
      gallery_painting_instance.title
    end
  end

  def artists
    all_gallery_paintings = Painting.all.select do |painting_instance|
      painting_instance.gallery_instance == self
    end
    all_gallery_paintings.map do |gallery_painting_instance|
      gallery_painting_instance.artist_instance.name
    end
  end

  def artist_name
    all_gallery_paintings = Painting.all.select do |painting_instance|
      painting_instance.gallery_instance == self
    end
    all_gallery_paintings.map do |gallery_painting_instance|
      gallery_painting_instance.artist_instance.name
    end
  end


   def most_expensive_painting
    all_gallery_paintings = Painting.all.select do |painting_instance|
      painting_instance.gallery_instance == self
    end
    all_gallery_paintings.max_by do |gallery_painting_instance|
      gallery_painting_instance.price
    end
  end

end


=begin
GALLERY

XGallery.all
  Returns an array of all the galleries
XGallery#paintings
  Returns an array of all paintings in a gallery
XGallery#artists
  Returns an array of all artists that have a painting in a gallery
XGallery#artist_name
  Returns an array of the names of all artists that have a painting in a gallery
XGallery#most_expensive_painting
  Returns an instance of the most expensive painting in a gallery
=end