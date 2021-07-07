class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  attr_accessor
  attr_reader :roster

  def add_student(student_name, grade)
    if @roster.any?{ |k,v| k == grade }
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(int)
    @roster[int]
  end

  def sort
    @roster.each do |k, v|
      v = v.sort
      @roster[k] = v
    end
    @roster
  end
end
