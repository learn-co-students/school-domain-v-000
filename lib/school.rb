# code here!
#require 'pry'
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

   def add_student(name, grade)
      roster[grade] = []
      roster[grade] << name
      #roster[grade] << name
      add_student(name, grade)
   end


   def grade(grade)
     roster[grade]
   end
end
#binding.pry
