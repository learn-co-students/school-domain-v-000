class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    self.roster[grade] = [] unless self.roster.has_key?(grade)
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, student_array|
      student_array.sort!
    end
  end

end
