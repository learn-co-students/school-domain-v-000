# code here!

class School
  attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(new_student, new_grade)
    if @roster.has_key?(new_grade)
       @roster[new_grade] << new_student
    else
       @roster[new_grade] = []
       @roster[new_grade] << new_student
    end
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end