# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(new_name, grade)
    roster[grade] ||= []
    roster[grade]<< new_name
  end

  def grade(s_grade)
    roster[s_grade]
  end

  def sort
    sort = {}
    roster.each do |grade, students|
      sort[grade] = students.sort
    end
    sort
  end
end
