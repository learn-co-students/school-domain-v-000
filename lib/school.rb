require 'pry'

class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] = [] unless @roster.include?(grade)
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade].flatten
    end

    def sort
        @roster.map { |data, value| @roster[data] = value.sort }
        @roster
    end
end

# binding.pry
