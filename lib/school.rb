require 'pry'

class School

	def initialize(roster)
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(name, grade)
		if @roster.key?(grade)
			@roster[grade] << name
		else
			@roster[grade] = []
			@roster[grade] << name
		end
	end

	def grade(grade)
		grade = @roster[grade]
		return grade
	end

	def sort
		new_roster = {}
		@roster.each do |key, value|
			# value.each do |name|
			# 	# binding.pry
			# 	value.sort
			# end
			new_roster[key] = value.sort
		end
		new_roster
	end

# {7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"]}


end




# school = School.new("Bayside High School")