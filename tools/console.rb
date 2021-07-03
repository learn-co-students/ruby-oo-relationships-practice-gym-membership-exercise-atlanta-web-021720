# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

ben = Lifter.new("Ben", 5)
lin = Lifter.new("Lin", 10)
liffy = Gym.new("Liffy")
nn_gym = Gym.new("NNGym")

liffy_mem = Membership.new(50, ben, liffy)
jiffy_mem = Membership.new(50, lin, liffy)
tiffy_mem = Membership.new(999, lin, nn_gym)

binding.pry

puts "Gains!"
