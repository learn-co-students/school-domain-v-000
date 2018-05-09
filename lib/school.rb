class School
  attr_reader :school_name, :roster
  
  GRADES_USED = []
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each_value {|v| v.sort!}
  end
end