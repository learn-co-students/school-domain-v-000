require "pry"
class School

  def initialize(name)
    @roster = {}
  end

  def roster
    @roster
  end
  def add_student(name, grade)
    if @roster[grade] == nil
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
    sorted_hash = {}
    @roster.each do |grade, name|
        sorted_hash[grade]=name.sort
    end
    sorted_hash
  end

end
