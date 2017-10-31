# code here!
require 'pry'

class School
attr_accessor :roster

def initialize(school)
  @school = school
  @roster = {}
end

def add_student(name,grade)
  # {10:[John,Frank]}
  if !roster[grade]
    roster[grade]= []
  end
  roster[grade] << name
end

def grade(grade)
  return roster[grade]
end

def sort
  @roster.collect do |grade,name|
    roster[grade] = name.sort
    end
    return @roster
  end

end
