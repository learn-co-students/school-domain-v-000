# code here!

class School
  attr_accessor :roster
  attr_reader :school

  def initialize(school)
    array = []
    @school = school
    @roster = {

    }

  end

  def school
    @school
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(stud_grade)
    @roster[stud_grade]
  end

  def sort
    @roster.each do |new_grade, student|
      student.sort!
    end
  end

end
