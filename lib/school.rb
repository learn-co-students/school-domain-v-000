# code here!
require 'pry'

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = [student_name]
    else
      @roster[grade] << student_name
    end

    def grade(grade_num)
      @roster[grade_num]
    end

    def sort
      sorted_roster = @roster.sort.to_h

      sorted_roster.each do |k,v|
        sorted_roster[k].sort!
      end
      sorted_roster
    end

  end
end
