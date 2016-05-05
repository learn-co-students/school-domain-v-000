# code here!

class School

  attr_reader :name, :roster
 

  def initialize(name)
    @name = name
    @roster = Hash.new

  end

  def add_student(student_name, grade)

    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
    @roster[grade] = [] << student_name
   end

  end
 
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_array|
      student_array.sort!
    end
  end


end