# code here!
class School
  attr_accessor :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= @roster[grade] = []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |key, array|
      array.sort!
    end
    @roster
  end

end
