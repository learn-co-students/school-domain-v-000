class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(students, grade)
        if !roster.keys.include?(grade)
            @roster[grade] = [] 
        end
        @roster[grade] << students
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.collect do |grade, students|
            @roster[grade] = @roster[grade].sort
        end
        @roster
    end

end