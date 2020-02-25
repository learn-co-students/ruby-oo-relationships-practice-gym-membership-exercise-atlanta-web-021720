class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end
  def lifters
    memberships.map do |membership|
      membership.lifter.name
    end
  end
  def lifter_names
    memberships.map do |membership|
      membership.lifter.name
    end
  end
  def lifters_lift_total 
    memberships.reduce(0) do |total, membership|
      total += membership.lifter.lift_total 
    end
  end
end
