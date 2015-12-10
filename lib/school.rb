require 'pry'

class School
    attr_accessor :roster
    
    def initialize(name)
       @name = name
       @roster = {}
    end
    
    def add_student(name, grade)
       @roster[grade] = [] if @roster.keys.none? {|g| g == grade}
       @roster[grade] << name
    end
    
    def grade(num)
        @roster[num]
    end
    
    def sort
        Hash[ @roster.map { |grade, students| [grade, students.sort] } ]
    end
    
end