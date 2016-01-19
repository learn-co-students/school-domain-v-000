require "pry"

class School
	attr_accessor :roster, :name	

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster.include?(grade) 
			@roster[grade] << name
		else
			@roster[grade] = []
			@roster[grade] << name
		end
	end

	def grade(grade)
		 @roster[grade]
	end

	def sort
		@roster.each do |grade, names|
			names.sort!
		end
	end
end

