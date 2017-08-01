class School
	def initialize(roster)
		@roster = {}
	end

	attr_accessor :name
	attr_reader :roster



	def add_student(student_name, grade)
		@roster[grade] ||= grade
		@roster[grade] << student_name
	end

	def grade(num)
	end
end