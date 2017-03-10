require 'pry'

class School
  attr_reader :school_name, :roster  # getter method(attr_reader), followed by setter method(initialize)

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    # Roster should be an empty hash upon initialization but will be built out to contain keys of grade levels.
    # The value of each key will be an array of student names, i.e {10 => ["Mike Trevino"]}.
  end

  def add_student(student_name, grade)
    #@roster is initialized instance variable from above method
    @roster[grade] || @roster[grade] = []  # If roster already has a grade key (i.e. key = 9), we'll be able to push a second student into
    # the array that grade 9 key points to. Otherwise OR(||), we need to first create the key of grade 9 and then point it to an empty array.
    # This can also be coded "@roster[grade] ||= []"
    @roster[grade] << student_name
    #binding.pry
  end

  def grade(grade)
    @roster[grade]  # Takes in an argument of a grade and return all of the students in that grade
  end

  def sort
    @roster.each do |grade, student_name|
      student_name.sort!  # sorts! self in place without returning a new array
    end
    #puts @roster.inspect
  end
end


school = School.new("Cedar Ridge High School")

puts school.school_name

school.add_student("Mike Trevino", 9)
school.add_student("Venessa Trevino", 9)
school.add_student("Joshua Aaron", 10)
school.add_student("Robert Smith", 11)

puts school.roster

puts school.grade(9)
puts school.grade(10)

school.sort
