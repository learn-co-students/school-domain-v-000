class School

	def initialize(name)
		@name = name
		@roster = {}
	end

	attr_reader :name, :roster

	def add_student(name, grade)
		if not @roster.include?(grade)
			@roster[grade]=[]
			@roster[grade]<<name
		else
			@roster[grade]<<name
		end
	end

	def grade(num)
		students=@roster[num]
		return students
	end

	def sort
		@roster.each do |key, value|
			value.sort!
		end
	end

end
