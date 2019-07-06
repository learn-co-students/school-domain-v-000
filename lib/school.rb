class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] = [] if roster[grade].nil?
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    #for each grade, sort the students in alphabetical order
    roster.each do |grade, student_array|
      student_array.sort!
    end

    #sort hash by grade
    roster.sort.to_h
  end
end
