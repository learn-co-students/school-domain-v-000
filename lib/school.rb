class School

	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		@roster[grade] ||= []
		@roster[grade] << student
	end

	def grade(grade)
		@roster.each do |key, value|
			if grade == key
				return value
			end
		end
	end

	def sort
		@roster.each do |key, value|
			value.sort!
		end
	end

end
