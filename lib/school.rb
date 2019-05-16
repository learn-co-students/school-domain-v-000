# code here!
class School
  attr_accessor :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.collect do |key, array_of_students|
      array_of_students.sort!
    end
    roster
  end

end
