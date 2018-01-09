# code here!
class School

  attr_accessor :roster, :name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster.keys.include?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end
#pseudo code
#if roster hash keys include student grade,
  #then push in student name.
#else
  #create a new key of student grade as empty array
  # then push name into it

  def grade(student_grade)
      @roster[student_grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade, students|
      sorted_array = students.sort
      sorted_hash [grade] = sorted_array
    end
      sorted_hash
  end


end
