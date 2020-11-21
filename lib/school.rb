class School
    attr_reader :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each {|grade, students| students.sort!}
    end
end