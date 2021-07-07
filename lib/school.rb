class School
	def initialize(roster)
		@roster = {}
	end

	attr_accessor :name
	attr_reader :roster



	def add_student(student_name, grade)
		@roster[grade] ||= []
		@roster[grade] << student_name
	end

	def grade(num)
		@roster[num]
	end

	def sort
		sorted = {}
		@roster.each do |grade, students|
			sorted[grade] = students.sort
		end
		sorted
	end
end