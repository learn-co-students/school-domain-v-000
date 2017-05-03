# code here!
class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      new_array = []
      new_array << name
      @roster[grade] = new_array
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade, name|
      sorted_hash[grade] = name.sort
    end
    sorted_hash
  end

end
