# code here!
class School
  attr_accessor :school_name
  attr_accessor :roster
  # attr_accessor :name
  # attr_accessor :grade
  # attr_accessor :student_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    # @student_name = student_name
    if roster.include?(grade) == false
      roster[grade] = []
      roster[grade] << student_name
    else
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort  #should return hash, key of grade and value of students within.
    roster.each {|grade, students| roster[grade] = students.sort}    #why does this line not work as collect and does work as each, without previous made array and shoveling???
  end #perhaps it re arranges the array...returning the original, as is the way of .each, but in a structured order thereafter?

end
