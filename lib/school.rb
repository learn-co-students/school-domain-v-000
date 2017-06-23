# code here!
require "pry"
class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # binding.pry
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(number)
    something = []
    @roster.each do |key, value|
      if key == number
        something << value
      end

    end
    something.flatten
  end

  def sort
    @roster.map do |key, value|
      value.sort!
    end
    @roster
  end





end
