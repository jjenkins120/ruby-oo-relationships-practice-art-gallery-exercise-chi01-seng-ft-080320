require_relative '../config/environment.rb'

a1 = Artist.new("Bob Ross", 17)
a2 = Artist.new("Michaelangelo", 40)
a3 = Artist.new("Jackson Pollack", 20)

g1 = Gallery.new("Smithsonian", "Washington, D.C.")
g2 = Gallery.new("MoMA", "New York City")

p1 = Painting.new("Mountains", 500, a1, g1)
p2 = Painting.new("La Primavera", 500000, a2, g1)
p3 = Painting.new("Splatter", 100000, a3, g2)
p4 = Painting.new("Big Mess", 1500000, a3, g1)


binding.pry

puts "Bob Ross rules."
