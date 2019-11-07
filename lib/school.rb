require 'pry'

class School
  attr_accessor :name, :roster
  
    def initialize(name)
      @name = name
      @roster = {}
    end
    
    def add_student(student, grade)
      @roster[grade] = [] unless @roster[grade].is_a?(Array)
      #binding.pry
      @roster[grade] << student
    end
    
    def grade(grade_level)
      @roster[grade_level]
    end
    
    def sort
      @roster.inject({}) do |hash, (key, value)|
        binding.pry
        hash.merge key => value.sort!
      end
    end
end