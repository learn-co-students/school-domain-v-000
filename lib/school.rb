# code here!
class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade_level)
    @roster[grade_level] ||= []
    @roster[grade_level] << student_name
  end

  def grade(grade_level)
    @roster.detect do |grade, student|
      if grade == grade_level
        return student
      end
    end
  end

  def sort
    new_roster = {}
    @roster.each do |grade, student|
      new_roster[grade] = student.sort
    end
    new_roster
  end

end
