class Project

    attr_accessor :project_name, :pledge_goal, :creator

    @@all = []

    def initialize(project_name, pledge_goal, creator)
        @project_name = project_name
        @pledge_goal = pledge_goal
        @creator = creator
        Project.all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.project == self
        end
    end

    

    def self.no_pledges
        Project.all.select do |project|
            project.pledges == []
          end
    end

    def self.above_goal
        Project.all.select do |project|
            pledges_total = 0
            project.pledges.each do |pledge|
                pledges_total += pledge.amount
                pledges_total
            end
        pledges_total >= project.pledge_goal
        end
    end

    def self.most_backers
        Project.all.max_by do |project|
            users = []
            project.pledges.each do |pledge|
            users << pledge.user
            end
            users.uniq.count
        end
    end

    





end