class School #model
  attr_accessor :school_name, :roster
  NEW = []

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
      @roster[student_grade] << student_name
  end
def grade(student_grade)
  @roster[student_grade]
end

def sort
 sorted_hash = {}
 @roster.each do |grade, students|
   sorted_hash[grade] = students.sort
 end
 sorted_hash
end
end
