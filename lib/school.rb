require "pry"

class School
    
    attr_accessor :name, :roster
    
def initialize(name)
    @name = name
    @roster = {}
end

def add_student(student, grade)
    @roster[grade] = [] unless @roster[grade].is_a?(Array)
    @roster[grade] << student
end

def grade(grade)
    @roster[grade]    
end

def sort
    sorted_roster = {}
    
    @roster.collect do |grade, student|
        sorted_roster[grade] = student.sort
    end
    sorted_roster
end
end