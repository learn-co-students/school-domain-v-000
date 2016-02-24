# code here!
class School

  attr_accessor :school, :roster, :grade, :student, :students

  def initialize(school)
    @school = school
    @roster = {}
  end


  grade = {}

  def new(roster)
    @roster=roster
  end

  def add_student(student, grade)
    if roster[grade].length == 0
      roster[grade] = []
      roster[grade] << student
    else
     roster[grade].push(student)
    end
  end

  def grade(grade)
    @grade = grade

  end

  def sort(students)
  end

end