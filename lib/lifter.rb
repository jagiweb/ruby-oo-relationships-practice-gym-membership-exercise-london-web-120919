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
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}
  end

  def self.total_lifter
    total_lift = Lifter.all.map{|lifter| lifter.lift_total}.sum
    total_lift.to_f / Lifter.all.count
  end

  def total_cost
    memberships.map{|member| member.cost}.sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end
  
end
