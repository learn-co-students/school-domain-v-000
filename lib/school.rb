# code here!

class School
	def initialize(name)

		@name = name

		@roster = {}

	end

	def grade(grade)
		@roster[grade]
	end

	attr_reader :name, :roster

	def add_student(name,year)

		if @roster.key?(year)

			@roster[year] << name

		else

			@roster[year] = []

			@roster[year] << name

		end

	end

	def sort

		@roster.map {|grade,students| students.sort}
		@roster
	end

end
