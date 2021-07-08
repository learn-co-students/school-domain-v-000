class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster[grade].is_a?(Array)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, students_array|
      students_array.sort! {|a, b| a <=> b}
    end
    @roster
  end
end
