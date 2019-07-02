require 'pry'
class School
  
  
  
  
  
  def initialize(name)
    @roster = {}
  end
  
  def roster=(roster)
    @roster = roster 
  end 
  
  def roster
    @roster
  end
  
  
  
  def add_student=(name, grade)
    @name = name
    @grade = grade 
  end
  
  def add_student(name, grade)
    #binding.pry
     if @roster.empty?
       @roster[grade] = []
       @roster[grade] << name
     elsif 
       @roster.has_key?(grade) 
       @roster[grade] << name
     else
       @roster[grade] = []
       @roster[grade] << name
     end
     @roster
  end
  
  def grade=(grade)
    @grade = grade
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort=(sort)
    @sort = sort
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end
  
  
  
  
  
  
  
  
  
  
  
  
end