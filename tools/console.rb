# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

# lifter

l1  = Lifter.new("lif1", 200)
l2  = Lifter.new("lif2", 150)
l3  = Lifter.new("lif3", 250)
l4  = Lifter.new("lif4", 120)

# gym

g1  = Gym.new("Gym1")
g2  = Gym.new("Gym2")
g3  = Gym.new("Gym3")
g4  = Gym.new("Gym4")

# membership

m1  = Membership.new(25 ,l1, g1)
m2  = Membership.new(20 ,l2, g2)
m3  = Membership.new(25 ,l3, g3)
m4  = Membership.new(20 ,l4, g4)

binding.pry

puts "Gains!"
