require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        project_backers.collect do |project_backer|
            project_backer.project
        end
    end
end