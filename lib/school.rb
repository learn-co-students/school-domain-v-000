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
  def grade(student_grade)
     roster[student_grade]
   end

   def sort
     sorted = {}
     roster.each do |grade, students|
       sorted[grade] = students.sort
     end
     sorted
  end
 end
