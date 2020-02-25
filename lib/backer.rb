class Backer
    attr_accessor :name, :backed_projects
    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
        @backed_projects = []
end 

def back_project(project)
    @backed_projects << project 
    project.add_backer(self) unless project.backers.include?(self)

end 

def self.all 
    @@all 
    end 
end 