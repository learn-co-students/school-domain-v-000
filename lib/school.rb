# code here!
class School 
	attr_accessor :roster

	def initialize(school_name)
		@school_name = school_name 
		@roster={}
	end

	def add_student(student_name, grade)  
		@roster[grade] = [] if !@roster.has_key?(grade)
		@roster[grade] << student_name
	end 

	def grade(grade_level)
		@roster[grade_level]
	end 

	def sort 
		sorted_students = {}
		@roster.each do |grade, students| 
			sorted_students[grade] = students.sort 
		end
		sorted_students
	end

end 

