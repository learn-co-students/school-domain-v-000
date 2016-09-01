class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    attr_reader:name, :roster
    def add_student(student_name, student_grade)
        if !@roster.include?(student_grade)
            @roster[student_grade] = []
        end
        @roster[student_grade] << student_name
    end
    def grade(this_grade)
        @roster[this_grade]
    end
    def sort
        @roster.each do |grade, student_array|
            student_array.sort!
        end
    end
end