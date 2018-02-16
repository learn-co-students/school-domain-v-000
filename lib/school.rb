# code here!
class School
  attr_accessor :school_name, :roster, :student_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade].push(student_name)
    else
      @roster[grade] = []
      @roster[grade].push(student_name)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |key, value|
      value.sort!
    end
    @roster
  end

end
