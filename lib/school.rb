# code here!
class School

  attr_reader :school_name, :roster

  def initialize(name, roster = {})
    @school_name = name
    @roster = roster
  end

  def add_student(name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << name
      else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
    @roster
  end

end