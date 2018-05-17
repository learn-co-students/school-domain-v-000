class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    sorted = {}
    @roster.sort.each do |grade, students|
      sorted[grade] = students.sort
    end
    return sorted
  end
end
