class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end

end
