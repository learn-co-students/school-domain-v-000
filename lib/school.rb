# code here!

class School 
	attr_accessor :roster
	attr_accessor :grade

	def initialize(school_name)
		@roster = {}
	end

	def add_student(student, grade)
		if @roster[grade] == nil
			@roster[grade] = []
		end
		@roster[grade] << student
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each {|key, val| @roster[key] = val.sort}
	end
end
