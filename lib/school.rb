# code here!
class School

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << student_name
  end

  def grade(grade_year)
    @roster[grade_year]
  end

  def sort
    @roster.each do |grade, student_names|
      student_names.sort!
    end
    @roster
  end

end
