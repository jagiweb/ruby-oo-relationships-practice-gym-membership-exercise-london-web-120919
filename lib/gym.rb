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
    Membership.all.select{|member| member.gym == self}
  end

  def lifters
    memberships.map{|member| member.lifter}
  end

  def lifters_names
    lifters.map{|lifter| lifter.name}
  end

  def lifters_total
    lifters.map{|lift| lift.lift_total}.sum
  end

end
