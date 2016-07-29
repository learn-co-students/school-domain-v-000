class School
	attr_accessor :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster.key?(grade)
			@roster[grade] << name
		else
			@roster[grade] = []
			@roster[grade] << name
		end
	end

	def grade(level)
		@roster[level]
	end

	def sort
		@roster.each { |key, value| value.sort! }
	end
end

	