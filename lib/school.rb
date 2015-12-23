class School
  attr_reader :name, :roster, :add_student

  def initialize(name)
    @name = name
    @roster = {}
    @roster
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else 
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    collection = {}
    @roster.each do |grade, students|
      collection[grade] = students.sort
    end
    collection
  end

end