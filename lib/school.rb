class School
  
  attr_accessor :name
  
  def initialize(school_name)
    @name = school_name
    @roster = { }
  end
  
  # Add one or more students to a specific grade
  def add_student(student_name, grade)
    
    if @roster.include?(grade) == true
      @roster[grade] << student_name
    else
      @roster[grade] = [ ]
      @roster[grade] << student_name
    end
    
  end # add_student
  
  
  
  # able to retrieve students from grade
  def grade(grade)
    @roster[grade]
  end # grade
  
  
  # Sorts the students
  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end # sort
  
  def roster
    @roster
  end # roster
  
end #=> ends class School