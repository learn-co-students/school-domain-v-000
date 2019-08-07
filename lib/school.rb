  class School
    attr_accessor :name, :roster, :grade, :sort

    def initialize(name)
      @name = name
      @roster = {}
    end


    def add_student(name, grade)
      @name = name
      @grade = grade
      if roster.has_key?(grade)
        roster[grade] << name
      else
        roster[grade] = []
        roster[grade] << name
      end
    end

    def grade(grade)
      roster[grade]
    end

    def sort
      roster.each do |grade, name|
        name.sort!
      end
    end

  end


school = School.new("Test School")
