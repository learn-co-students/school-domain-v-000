# code here!
class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.any?{|k, v| k == grade}
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(n)
    @roster[n]
  end

  def sort
    @roster.each do |grade, name_array|
      name_array.sort!
    end
  end
end
