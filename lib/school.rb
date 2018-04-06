require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end



def add_student(names, grade)
  @roster[grade] ||= []
  @roster[grade] << names
end

def grade(num)
  result = []
  result << @roster.values_at(num)
  result.flatten.compact
end

def sort
  resulting = {}
  @roster.each {|k,v| resulting[k] =  v.sort}


resulting
end
end
