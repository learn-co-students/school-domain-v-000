# code here!
class School
  attr_accessor :name, :grade
  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    # roster[grade] = [name]
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end
