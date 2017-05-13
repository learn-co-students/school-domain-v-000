require 'pry'#so everything goes in the overarching School method
#@ name and @roster are all part of the initialize method
#instance variable allows me to call that variable outside of the class
#So you can only initialize with one argument?
#Learn how to read the tests better
#So input name is the order from which you'll get all of your stuff?
#Where is this lab pulling data from? I need to find out what my arguments need to be
#I need to find out where I'm pulling arguments from and what they are supposed to be
#I need to set a condition that will allow names to be shoveled into roster,
  #should this be part of the initialize method?

class School
  attr_accessor :name, :roster, :blah, :blahblah
  def initialize(input_name)


    @name = input_name
    @roster={}


end
def add_student(student, grade)
#if nil on left set equal to right, if not nil skips it
  roster[grade] ||= []
  roster[grade]<<student
end
def grade(grade)
  roster[grade]
end
def sort #last step will be returning a sorted hash
sorted = {}
roster.each do |key, array|
array.sort!
sorted[key]=array
  end
sorted
end
end
