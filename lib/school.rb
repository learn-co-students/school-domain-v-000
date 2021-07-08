# code here!
class School

	attr_reader :name
	attr_accessor :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name,grade)
		if !@roster[grade]
			@roster[grade] = []
		end
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade] || []
	end

	def sort
		@roster.each do |k,v|
			v.sort!
		end
		@roster
	end

end
