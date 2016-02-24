# code here!
require 'pry'
class School

	def initialize(school_name)
		@roster = {}
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |key, value|
			value.sort!
		end
	end

	def roster
		@roster
	end

	def add_student(student_value, grade_key)
		if @roster.keys.include?(grade_key)
			@roster[grade_key] << student_value
		else

			@roster[grade_key] = [student_value]
		end
	end
end