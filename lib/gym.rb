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
    Membership.all.select do |gyms|
      gyms.gym == self
    end
  end

  def lifters
    lifters_at_gym = Membership.all.select do |lifter|
      lifter.gym == self
    end
    lifters_at_gym.map do |lifter|
      lifter.lifter
    end
  end

  def lifter_names
    llifters.map do |name|
      name.name
    end
  end

  def lift_total
    total_n = 0
    lifters.map do |total|
      total_n += total.lift_total
    end
    total_n
  end
end
