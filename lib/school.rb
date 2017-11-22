class School
  attr_accessor :roster

  def initialize(school)
    @roster = {}
  end

  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else roster[grade] = []
    roster[grade] << student
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each {|grade, students| students.sort!{|a, b| a <=> b}}
  end

end
