class School
  attr_reader :school, :roster


  def initialize(school_name)
    @school = school_name
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade]=students.sort
    end
  end
end
