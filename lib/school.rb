class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(number)
    roster[number]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
    roster.to_h  
  end

end
