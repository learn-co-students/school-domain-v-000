# code here!
class School
  attr_accessor :name, :grade, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sort= {}
    roster.each {|grade, student| sort[grade] = student.sort}
    sort
  end
end
