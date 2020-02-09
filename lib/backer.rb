require 'pry'
class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects.push(project)
    #find or add backer to project
    #binding.pry
    if project.backers.find{|backer| backer == self} == nil
      project.add_backer(self)
    end
  end

end
