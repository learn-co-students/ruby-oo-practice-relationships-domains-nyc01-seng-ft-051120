class Pledge
  @@all = []
  attr_accessor :user, :project, :amount

  def initialize(project, user, amount)
    @project = project
    @user = user
    @amount = amount
    Pledge.all << self
  end

   def self.all
     @@all
   end

 end
