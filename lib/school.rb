# code here!

class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}

  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end
end

def sort
  @roster.collect do |grade|
    grade.sort!
  end
end


#
# bayside = School.new("Bayside High School")
#
#
# puts bayside.school_name
#
# bayside.add_student("billy", 10)
#
# bayside.add_student("bobby", 10)
#
# bayside.add_student("joey", 12)
# puts bayside.roster
