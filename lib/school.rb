class School
  #attr_accessor :school, :state, :student, :grade
  attr_reader :name, :roster, :add_student

  def initialize(name)#, roster)
    @name = name
    @roster = {}
  end

  #def roster
  #  self.state = {}
  #end

  def add_student(student, grade)
    if roster.include?(grade)
      roster[grade] << student

    else
    roster[grade] = []
    roster[grade] << student
  end
end

  def grade(grade)  #returns all students of that grade in roster
    @roster[grade]
  end

  def sort()
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
