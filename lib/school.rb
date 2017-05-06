class School
  attr_accessor :student_name, :grade
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |key, value| @roster[key] = value.sort }
    Hash[@roster.sort]
  end

end

#def add_student(student, grade)
#    if @roster.has_key?(grade)
#      @roster[grade] << student
#    else
#      @roster[grade] = []
#      @roster[grade] << student
#    end