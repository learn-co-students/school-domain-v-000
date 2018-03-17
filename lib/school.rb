class School 
attr_accessor :school_name, :roster
  def initialize(school_name)
    @school = school_name
    @roster = {}
  end 
 

  def add_student(student_name, grade_level)
    @roster[grade_level] ||= []
    @roster[grade_level] << student_name
  end

  def grade(grade)
    @roster[grade]
  end 

  def sort
    @roster.each do |grade, students|
      students.sort!
      end
    end

end 