# code here
require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = Hash.new
    end

    def add_student(name,grade)
      if @roster.has_key?(grade) == false 
        @roster[grade] = []
      end
      @roster[grade] << name 
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      roster.each {|key,value| value.sort!}
    end

end