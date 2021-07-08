class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade].push(student)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_list_of_students = {}
    roster.each do |grade, students|
      sorted_list_of_students[grade] = students.sort
    end
    sorted_list_of_students
  end
end
