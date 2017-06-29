# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |key, student_array| #take key/hash pair as argument
      #change the order of each array associated with the keys
      @roster[key] = student_array.sort
    end
  end

end
