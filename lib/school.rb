# code here!
require 'pry'
class School
	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(student, grade)
		# binding.pry
		if @roster[grade].nil?
			@roster[grade] = []
		end
		@roster[grade] << student
		#do a nil or empty check
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		new_hash = {}
		@roster.each do |key, value|
			new_hash[key] = value.sort
		end
		new_hash
	end

end