require 'pry'

class School
  attr_accessor :school_name, :roster, :grade, :student_name

    def initialize(school_name)
      @school_name = school_name
      @roster = {}
    end

    def add_student(student_name, grade)
      roster[grade] ||= []
      roster[grade] << student_name
      roster
    end

    def grade(num)
      roster[num]
    end

    def sort
      roster[].sort
    end

    def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
      end
    sorted
    end

end
