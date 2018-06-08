# code here!
class School



  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(num)
    @roster[num]
  end

  def sort
  sorted = {}
@roster.each{|grade, students| sorted[grade] = students.sort}
sorted
  end


end
