class Painting

  attr_reader :title, :price, :artist_instance, :gallery_instance

  @@all = []

  def initialize(title, price, artist_instance, gallery_instance)
    @title = title
    @price = price
    @artist_instance = artist_instance
    @gallery_instance = gallery_instance
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.total_price
    painting_totals = Painting.all.map do |painting_instance|
      painting_instance.price
    end
    painting_totals.sum
  end 
end

=begin
PAINTING

XPainting.all  
  Returns an array of all the paintings

XPainting.total_price
  Returns an integer that is the total price of all paintings
=end