class Project
  @@all = []
  attr_reader :user
  attr_accessor :name, :pledge_goal

 def initialize(name, pledge_goal, user)
   @name = name
   @pledge_goal = pledge_goal
   @user = user
   Project.all << self
 end

 def all_pledges
   Pledge.all.select { |p| p.project == self }
 end

 def total_pledge_amount
   self.pledges.map { |p| p.amount }.sum
 end

 def self.all
  @@all
 end

 def self.no_pledges
  Project.all.select { |p|
    !Pledge.all.map { |pledge| pledge.project }.include?(p)
      }
 end

 def self.above_goal
  Project.all.select { |p| p.total_pledge_amount > p.pledge_goal }
 end

 def self.most_backers
    Project.all.max_by { |p| p.all_pledges.count}
 end

end
