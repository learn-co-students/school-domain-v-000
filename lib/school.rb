

class School
  def initialize(school)
    @school = school
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(student, grade)
    if @roster[grade] != nil
    @roster[grade] << student
    else
    @roster[grade] = [student]
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each {|key, value| value.sort!}
  end
end
