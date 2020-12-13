class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select do |projects|
            projects.project == self
        end
        projects.collect do |projects|
            projects.backer
        end
    end

end