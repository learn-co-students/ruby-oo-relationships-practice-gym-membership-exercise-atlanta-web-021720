# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gene = Lifter.new("Gene", 1000)
trey = Lifter.new("Trey", 900)
bryan = Lifter.new("Bryan", 500)
golds = Gym.new("GoldsGym")
globo = Gym.new("GloboGym")
lafit = Gym.new("LAFitness")
membership1 = Membership.new(100, gene, golds)
membership2 = Membership.new(50, gene, globo)
membership3 = Membership.new(100, gene, lafit)
membership4 = Membership.new(30, trey, lafit)



binding.pry

puts "Gains!"
