# code here!
class School

  def initialize(name)
    @school = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.each do |grade, name|
      @roster[grade].sort!
    end
    @roster.sort.to_h
  end
end
