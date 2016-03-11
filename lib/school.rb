# code here!
require 'pry'

class School


def initialize(name)
  @name = name
  @roster = {}
end

def roster
  @roster
end

def add_student(name, grade)
  if @roster.has_key?(grade)
    @roster[grade] << name
  else
    @roster[grade] =[] 
    @roster[grade] << name
  end
end

def grade(num)
  @roster[num]
end

def sort
  sorted_roster = {}
  sorted_array = []
  @roster.each do |key, value|
    sorted_array = value.sort
    sorted_roster[key] = sorted_array
  end
  sorted_roster
end

end