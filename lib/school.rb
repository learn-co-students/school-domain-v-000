# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
      @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |key, value|
      value.sort!
    end
  end

end
