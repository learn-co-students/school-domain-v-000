# code here
require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = Hash.new
    end

    def add_student(name,grade)
      @roster[grade] ||= []
      @roster[grade] << name 
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      roster.each {|key,value| value.sort!}
    end

end