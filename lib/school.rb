# code here!

class School

  attr_accessor :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade) #not .defined? or .exists? lol
      roster[grade] << student
    else
      roster[grade] = [student]
    end

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort.to_h
    temp = {}
    @roster.each do |k,v|
      temp[k] = v.sort
    end

     @roster = temp
    #@roster.sort.to_h
  end




end