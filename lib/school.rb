class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each{|grade,names| names.sort!}
    Hash[roster.sort]
  end

end
