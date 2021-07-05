
require 'pry'

class School

  attr_accessor :roster, :grade, :student
  attr_reader :school_name

  @roster = ROSTER = {}

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if
      @roster == {}
      @roster[grade] = [] << "#{student}"
    elsif
    keys = @roster.keys
      if keys.include?(grade) == true
        @roster[grade] << "#{student}"
      else
        @roster[grade] = [] << "#{student}"
      end
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    alpha_hash = {}
    @roster.each do |key, value|
      alpha_hash[key] = value.sort
    end
    alpha_hash
  end

  def print_roster
    print @roster
  end

end




#create new empty array grade input into the hash and make it's value = to the array into which we schoop the students
#empty hash => create a grade array => scoop current student in
#no grade array for current grade => create a grade array => scoop current student in
#if current grade array exists => scoop current student in
