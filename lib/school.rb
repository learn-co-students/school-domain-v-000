# code here!
class School

	attr_accessor :name, :roster

	def initialize(name = nil)
		@name = name
    @roster = {}
	end

	def add_student(student, grade)
		@roster[grade] ||= []
		@roster[grade] << student
	end

	def grade(num)
		@roster.each do |grade, student_array|
			if num == grade
				return student_array
			end
		end
	end

	def sort 
		@roster.each do |grade, student_array|
			@roster[grade] = student_array.sort
		end
	end


end
