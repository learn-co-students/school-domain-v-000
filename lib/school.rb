class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    #add students and grade to roster hash, key grade and value student array
     roster[grade] ||= []
     roster[grade] << student_name
  end

  def grade(grade)
    roster.values
  end

  def sort
    roster.collect do |grade, student|
      student.sort
    end
  end

end
