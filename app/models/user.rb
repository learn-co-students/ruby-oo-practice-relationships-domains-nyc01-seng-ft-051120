class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        User.all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.user == self
        end
    end

    def self.highest_pledge
        highest_pledge_amount = 0
        highest_pledge = nil
        User.all.each do |user|
            user.pledges.each do |pledge|
                if pledge.amount > highest_pledge_amount  
                highest_pledge_amount = pledge.amount
                highest_pledge = pledge
                end
            end
        end
        highest_pledge.user
    end

    def self.multi_pledger
        User.all.select do |user|
            user.pledges.count > 1
        end
    end

    def projects
        Project.all.select do |project|
            project.creator == self if project.creator
        end
    end


    def self.project_creator
        project_creators = []
        User.all.each do |user|
            user.projects.each do |project|
                if project.creator == user
                    project_creators << user
                end
            end
        end
        project_creators.uniq
    end

end