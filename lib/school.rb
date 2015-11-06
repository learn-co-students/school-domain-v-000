class School
  attr_accessor :roster  


  def initialize(school)
    @school = school
    @roster = Hash.new
  end


  def add_student(student_name, grade)
    if @roster[grade] != nil
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
    
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  
  end


end

