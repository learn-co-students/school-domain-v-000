class School

	attr_accessor :roster
	
	def initialize(school)
		@school = school
		@roster = {}
	end

	def add_student(name, grade)
		if roster.key?(grade)
			roster[grade] << name
		else
			roster[grade] = []
			roster[grade] << name
		end
	end

	def grade(grade)
		roster[grade]
	end

	def sort
		roster.each {|grade,names| names.sort!}
	end
end