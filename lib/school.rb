class School
  attr_accessor :roster
  attr_reader :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key,value|
	     roster[key].sort!
     end
  end
end
