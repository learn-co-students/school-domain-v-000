# code here!
class School
  def initialize(name)
    @name = name
    @roster =  {}
  end
  def name=(name)
    @name = name
  end
  def name
    @name
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    @grade = grade
    if @roster.include?(grade)
      @roster[grade]<<name
    else
    @roster[grade] = []
    @roster[grade]<<name
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade, array|
      array = array.sort
      @roster[grade] = array
    end
    @roster
  end
end