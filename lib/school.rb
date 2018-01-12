# code here!

class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if(@roster[grade] == nil)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
