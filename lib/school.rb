class School
  #attr_accessor
  attr_reader :roster

def initialize(roster)
  @roster = {}
end

def add_student(name, grade)
  roster[grade] = [] unless roster.keys.include?(grade)
  roster[grade] << name
end

def grade(grade)
  roster[grade]
end

def sort
    roster.each do |grade, name|
      name.sort!
    end
end

end
