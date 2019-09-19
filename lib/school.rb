# code here!
class School
  attr_accessor :roster, :add_student
  attr_reader :school_name
  def initialize(school_name)
    @school_name=school_name
    roster = {}
    @roster=roster
  end
  def add_student(student_name,grade)
    @student_name=student_name
    @grade=grade
    # roster[@grade] =[]
     if roster.has_key?(@grade) then
             roster[@grade] << @student_name
     else
       roster[@grade] =[]
       roster[@grade] << @student_name
     end
  end
  def grade(grade)
    @grade=grade
    return @roster[@grade]
  end
  def sort
   sorted_roster={}
   roster.collect do |grade, array|
      sorted_roster[grade]=array.sort
  end
    return sorted_roster
  end
end
