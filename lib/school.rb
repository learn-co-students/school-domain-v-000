# code here!
class School

  def initialize(name)
    @roster = {}
    @name = name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each {|name, grade|
      grade.sort!
    }
  end
end
