class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
  end

end
