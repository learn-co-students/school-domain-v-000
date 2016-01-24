class School


  def initialize(school_name)
    @school_name = school_name  
    @roster = {}

  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each{ |grade, student_data| student_data.sort!}
  end

end
