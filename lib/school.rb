require 'pry'

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

    def add_student(name, grade)
      if @roster.keys.include?(grade)
          @roster[grade] << name
      else
        @roster[grade] = []
        @roster[grade] << name
      end
    end

    def grade(grade)
      return @roster[grade]
  end

    def sort
     @roster.each do |key, value|
       value.sort!
    end
  end

end
