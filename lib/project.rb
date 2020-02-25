class Project
    attr_accessor :title, :backers
    @@all = [] 

    def initialize(title)
        @title = title
        @@all << self 
        @backers = [] 
        
end 

def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
end 

def self.all 
    @@all 
    end 
end 