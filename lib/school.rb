# code here!
class School
  attr_accessor :name
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grades)
    roster[grades] = [] if !roster.keys.include?(grades)
    roster[grades] << name
  end

  def grade(grades)
    roster[grades]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
