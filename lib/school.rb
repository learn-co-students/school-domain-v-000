class School
	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		if roster.include?(grade)
			roster[grade] << student
		else
			roster[grade] = []
			roster[grade] << student
		end
	end

	def grade(grade)
		roster[grade]
	end

	def sort
		roster.each { |grade, students| roster[grade] = students.sort }
		roster
	end

end