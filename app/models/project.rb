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

end