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
    Membership.all.map do |gym|
      gym.gym
    end
  end

  def self.lift_average
    total = 0
    self.all.map do |lift|
      total += lift.lift_total
    end
    total
  end

  def total_cost
    total = 0
    cost_var = Membership.all.select do |cost|
      cost.lifter == self
    end
    cost_var.map do |cost|
      total += cost.cost
    end
    total
  end

  def new_membership(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end

end
