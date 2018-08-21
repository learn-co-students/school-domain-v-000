# code here!
class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = { }
  end
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade].push(name)
  end
  def grade(grade)
    roster[grade]
  end
  def sort
    sorted = { }
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    return sorted
  end
end
