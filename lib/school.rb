# require 'pry'

class School
attr_accessor :roster, :student

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)

    if @roster.keys.include?(grade)
      @roster[grade] << student_name
      # binding.pry
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k,v|
      @roster[k] = v.sort!
    end
  end

end
