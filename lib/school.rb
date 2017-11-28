require 'pry'
# code here!
class School
  attr_accessor :student_name, :student_grade
  attr_reader :roster, :name

  def initialize(name)
    @name = name
#    @roster = Hash.new { | grade, name | grade[name] = Array.new }
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if !@roster.keys.include?(student_grade)
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do | grade, names |
      @roster[grade] = names.sort
    end
  end
end

# school = School.new("Bayside High School")
# school.add_student("Homer Simpson", 9)
# school.add_student("Bart Simpson", 9)
# school.add_student("Avi Flombaum", 10)
# school.add_student("Jeff Baird", 10)
# school.add_student("Blake Johnson", 7)
# school.add_student("Jack Bauer", 7)
# school.add_student("Claudia Jean Cregg", 7)
# school.add_student("Jane Villanueva", 7)
# school.add_student("Maura Pfefferman", 7)
# school.add_student("Jackie Peyton", 7)
# school.add_student("Red Reznikov", 7)
# binding.pry
