# code here!
class School
  attr_accessor :roster, :school_name
  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    roster_sorted = @roster
    @roster.each {|grade_level, info|
    roster_sorted[grade_level] = info.sort
    }
    roster_sorted
  end
end
