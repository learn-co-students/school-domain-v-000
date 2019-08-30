require 'pry'
class School
   # attr_accessor :roster = {}
   attr_reader :school_name

   def initialize(school_name)
      @school_name = school_name
      @roster = {}
   end

   attr_reader :roster

   def add_student(student_name, grade)
      if !@roster.key?(grade)
         @roster[grade] = []
         @roster[grade] << student_name
      else
         @roster[grade] << student_name
      end
   end

   def grade(grade)
      @roster[grade]
   end

   def sort
       @roster.each { |grade, student|  student.sort!}.to_h
   end
end

# binding.pry
