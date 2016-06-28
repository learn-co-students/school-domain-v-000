class School
  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student_name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end
# how to sort?
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
