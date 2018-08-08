


class School

attr_reader :name

def initialize(name)
    @name = name
    @roster = {}
end

def roster
  @roster
end

def add_student(name, grade)

  roster[grade] ||= []
  roster[grade] << name

end

def grade(grade)
  roster[grade]
end

def sort
  new_roster = {}
  roster.each do |grade, students|
    new_roster[grade]= students.sort
  end
  new_roster
end




end
