# code here!

class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        @roster[grade] = [] unless roster.keys.include?(grade)
        @roster[grade] << name
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster = Hash[ @roster.sort_by { |key, val| key } ]
        @roster.map { |grade, students_array| students_array.sort! }
        @roster
    end
    
end
