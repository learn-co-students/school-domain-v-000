# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster= {}
  end

  def add_student(students, grade)
    #hash[new_key] = []
    #hash[new_key] << new_value_for_value_array
    @students = students
    @grade = grade
    if @roster[@grade] == nil
        @roster[@grade] = []
        @roster[@grade] << @students
    else
       @roster[@grade] << @students
    end

  end

  def grade(grades)
   @roster[grades]
  end

  def sort
  #list = {}
    @roster.each do |grade, students|
      students.sort!
  end
     @roster
  end

end
