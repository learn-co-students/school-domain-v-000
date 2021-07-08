# code here!
class School
  
  def initialize(title)
    @school_name = title
    @roster = {}
  end
  
  def roster
   @roster
  end
  
  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grades, studentArray|
      @roster[grades] = studentArray.sort
    end
  end
end