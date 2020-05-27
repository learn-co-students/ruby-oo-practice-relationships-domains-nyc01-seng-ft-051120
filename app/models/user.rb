class User
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    User.all << self
  end

  def create_project(name, pledge_goal)
   Project.new(name, pledge_goal, self)
  end

  def back_project(project, amount)
   Pledge.new(project, self, amount)
  end

  def self.all
    @@all
  end

  def self.highest_pledge
   Pledge.all.max_by { |p| p.amount }
  end

  def self.multi_pledger
    pledge_count = Hash.new(0)
    Pledge.all.map { |p| p.user }.each { |p| pledge_count[p] += 1 }
    pledge_count.select{ |k, v| v > 1}
  end

  def self.user_with_most_pledges
   pledge_count = Hash.new(0)
   Pledge.all.map { |p| p.user }.each { |u| pledge_count[u] += 1 }
   pledge_count.sort_by { |pledge, numer| numer}.last[0]
  end

  def self.project_creator
   Project.all.map { |p| p.user }
  end

end
