class School

  attr_accessor :name, :roster


    def initialize(name)
      @name = name
      @roster = {}
    end




    def add_student(student, grade)
      if roster.has_key?(grade) != true
        roster[grade] = []
        roster[grade] << student
      else
        roster[grade] << student
      end
      roster
    end

    def grade(grade)
      array = []
      roster[grade].each do |student|
        array.push(student)
      end
      array
    end

    def sort
      roster.each do |grade, students|
        students.sort!
      end
    end

end
