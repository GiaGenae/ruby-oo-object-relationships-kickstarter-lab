require 'pry'

class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        back_project.collect do |project|
            backer.project
        end
    end
end