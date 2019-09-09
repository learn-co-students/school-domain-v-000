class School
  def initialize(name)
    @name = name
    self.roster = {}
  end

  attr_accessor :roster

  def add_student(student, grade)
    if self.roster.keys.include?(grade)
      self.roster[grade] << student
    else
      self.roster[grade] = []
      self.roster[grade] << student
    end
  end

  def grade(grade)
    grade_list = self.roster[grade]
  end

  def sort
    sorted_roster = {}
    self.roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end

end
