require 'pry'

class School

	attr_accessor :roster, :student, :grade
	attr_reader :name
	

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)

		if !(@roster[grade])
			@roster[grade] = []
		end
		@roster[grade] << student	
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		new_hash= @roster.each do |key, value|
			@roster[key] = value.sort
		
	end

	end
end


		