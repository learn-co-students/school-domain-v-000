require 'pry'

class School

    def initialize (name)
      @school = name
      @roster = {}
    end
   

    def school
      @school
    end

    def roster
      @roster
    end

    def add_student (name,grade)
        @roster[grade] = [] if !@roster[grade] 
        @roster[grade] << name
    end

    def grade(grade_input)
       @roster[grade_input]  
    end

    def sort
        @roster_new = {}
        @roster.each do |key,value|
          
          @roster_new[key] = value.sort
        end 
        @roster_new 
    end
end 
