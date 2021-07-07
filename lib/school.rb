class School

attr_accessor  :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def name=(name)
    @name = name
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, student|
      sorted[grade] = student.sort
      end
      sorted
    end

end
