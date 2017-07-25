# code here!
class School
    # attr_accessor 
    attr_reader :name, :roster
    
    def initialize(name)
     @name = name
     @roster = {}
    end


    # def add_student(student_name, grade)
    #     roster[grade] ||= []
    #     roster[grade] << student_name
    # end


    def add_student( name,grade)
        if @roster[grade]
           @roster[grade] << name 
        elsif 
        @roster[grade] = []
        @roster[grade] << name 
        end
    end
    def grade(grade)
        @roster[grade] 
    end

    def sort
        @roster.each do |grade, student|
           student.sort!
        end 
    end
end