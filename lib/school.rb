class School
	attr_reader :school, :roster
	
	def initialize (school)
		@school =  school
		@roster = {}
	end

	def add_student(name, grade)
		
		@roster[grade] ||= []

		@roster[grade] << name	
	end

	def grade (num)

		@roster[num]
	end

	def sort
		@roster.map {|k, v| @roster[k] = @roster[k].sort}
		@roster

	end

end



# code here!