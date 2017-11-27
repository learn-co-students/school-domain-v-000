# code here!
class School
  attr_accessor :student_name, :student_grade
  attr_reader :roster, :name

  def initialize(school_name)
    @school_name = school_name
#    @roster = Hash.new { | grade, name | grade[name] = Array.new }
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if !@roster.keys.include?(student_grade)
      @roster[student_grade] = []
    end
      @roster[student_grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster[grade].sort { | name1, name2 | name1 <=> name2 }
    @roster
  end
end
