class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def school
    @school
  end

  def add_student(student_name, grade)
    (@roster[grade] ||= []) << "#{student_name}"
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each { |grade, students_array| sorted_roster[grade] = students_array.sort }
    sorted_roster
  end
end


# def sort
  # @roster = @roster.sort { |grade, student_name| grade[0]<=>student_name[0] }
  # @roster
# end
# end
