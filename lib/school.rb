class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster.include? grade
    @roster[grade] << student_name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each {|grade,students| students.sort!}.sort.to_h
  end
end