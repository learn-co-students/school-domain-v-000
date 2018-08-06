# code here!

class School

  attr_reader :roster
  def initialize(school_name)
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
    @roster
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @sorted_roster = {}
    @roster.each do |grade_level, students|
      @sorted_roster[grade_level] = students.sort
    end
    @sorted_roster
  end

end
