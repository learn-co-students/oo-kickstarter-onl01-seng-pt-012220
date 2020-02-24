class Backer

attr_accessor :name    
attr_reader :backed_projects

@@all = []

def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
end

def self.all
    @@all
end

def back_project(project)
    @backed_projects << project
    project.backers << self
end










end