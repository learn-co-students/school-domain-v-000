class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] <<  student
end

def grade(grade)
  @roster[grade]
end

def sort
  sorting = {}
  roster.each do |grade, students|
    sorting[grade] = students.sort
  end
  sorting
end
end
