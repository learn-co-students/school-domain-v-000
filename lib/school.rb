# code here!

class School
	attr_accessor :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		if @roster.has_key?(grade)
			@roster[grade] << student
		else
			@roster[grade] = []
			@roster[grade] << student
		end	
		@roster
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		sorted = {}
		@roster.each do |grade, students|
			sorted[grade] = students.sort
		end
	sorted
	end
end
