class School
	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster=(roster_addition)
		@roster << roster_addition
	end

	def add_student(nam, grade)
		if @roster[grade]
			# puts "grade exists"
		 @roster[grade] << nam
		else
			# puts "grade doesn't exist"
			@roster[grade] = ["#{nam}"]
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |k,v|
			@roster[k].sort!
		end
		@roster
	end


end

school = School.new("RIS School")
school.add_student("AC Slater", 9)
school.add_student("Mookie", 9)
school.add_student("Homer", 10)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)

 puts school.roster