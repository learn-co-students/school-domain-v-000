# code here!
class School

  def initialize(school_name)
   @school_name = school_name
   @roster = {}
  end

  def roster
   @roster
  end

  def add_student(students_name, grade)
   roster[grade] ||= []
   roster[grade] << students_name
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
