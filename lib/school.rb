# code here!
class School
  attr_reader :school_name, :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect{|grade, student_names| student_names.sort!}
    @roster
  end

end
