# code here!
#require 'pry'
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

   def add_student(name, grade)
       #roster[grade] ||= []
       if roster[grade]
       roster[grade] << name
      elsif !roster[grade]
       roster[grade] = []
       roster[grade] << name
     end
   end

   def grade(grade)
     roster[grade]
   end

def sort
  roster.each { |key, value| value.sort! }
  roster
 end

end
#binding.pry
