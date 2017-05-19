class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    blah = []
    @roster.each do |grade, student|
      @roster[grade] = @roster[grade].sort
    end
  end

end
