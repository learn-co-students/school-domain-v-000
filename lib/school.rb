class School
  attr_reader :roster

  def initialize(school_name)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each_value do |value|
      value.sort!
    end
  end
end

