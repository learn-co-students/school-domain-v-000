# code here!
class School
    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end

        sorted
    end
end
