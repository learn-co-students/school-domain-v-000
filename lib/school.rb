class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(sname, grade)
    roster[grade] ||= []
    roster[grade] << sname
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end

end
