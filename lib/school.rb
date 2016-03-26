require 'pry'

class School
  def initialize(name)
    @name = name
    @hash = {}
  end

  def roster
    @hash
  end

  def add_student(name, grade)
    if !@hash.include?(grade)
      @hash[grade] = []
      @hash[grade] << name
    else
      @hash[grade] << name
    end
  end

  def grade(grade)
    @hash[grade]
  end

  def sort
    @hash.each do |grade, name|
      name.sort!
    end
  end
end