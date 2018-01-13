require 'pry'


class School
    
    attr_accessor :roster
    attr_reader :name
    
    
    def initialize(name)
        @name = name
        @roster = {}
    end 
    
    
    def add_student(student, grade)
        if roster.include?(grade) != true
            roster[grade] = []
            roster[grade] << student
        else 
            roster[grade] << student
        end
    end
    
    def grade(arg)
        roster[arg]
    end
    
    def sort
        sort = {}
        roster.each do |year, data|
            data.sort!
        end
        roster
    end


end

#sort = {}
#        roster.each do |year, data|
#            data.sort!
#        end
#        roster
#        end