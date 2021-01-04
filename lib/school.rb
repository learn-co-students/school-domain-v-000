# code here!
class School 
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.sort.collect do |grade, student_array|
            @roster[grade].sort!
        end
        @roster
    end
end
