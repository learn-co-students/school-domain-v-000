# code here!
class School
  attr_accessor :school, :roster, :student

  def initialize(school)
     @school = school
     @roster = {}
     @student = student
   end

  def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
  end

  def grade(grade)
      @roster[grade]
  end

  def sort
    @roster.each_value(&:sort!)
    # each grade sort the list of students.
  end

end
