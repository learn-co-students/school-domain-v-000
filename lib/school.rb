# code here!
require "pry"
class School 
  def initialize(name, roster)
    @name = name
    @roster = roster 
    roster = {}
  end
  
end

school = School.new("Bayside High School")
school.roster
