# code here!
require 'pry'

class School 

  attr_accessor :school, :roster
  attr_reader :grade
      
    def initialize(school)
      @school = school
      @roster = {}
    end

    def add_student(name, grade_level)     
        @roster[grade_level] = [] unless roster.include?(grade_level)
        @roster[grade_level] << name 
    end

    def grade=(grade)
      @grade = grade
    end

    def grade(grade)
      @roster.values_at(grade).flatten
    end

    def sort  
      @roster.each do |grade, name_array|
        name_array.sort! {|a, b| a<=>b}
      end

    end
    
end
