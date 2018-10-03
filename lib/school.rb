class School
    attr_reader :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        #add key value pair for name and grade to roster

        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
        @roster
    end
end