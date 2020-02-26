class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all
    @@all
  end
  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end
  def gyms 
    memberships.map do |membership|
      membership.gym
    end
  end 
  def total_cost
    memberships.reduce(0) do |total, membership|
      total += membership.cost
    end
  end
  def self.total_lift
     liftertotals = Lifter.all.reduce(0) do |total, lifter|
      total += lifter.lift_total
    end
    liftertotals/Lifter.all.length
  end
  def add_gym_membership(gym, cost)
    Membership.new(cost, self, gym)
  end
end
