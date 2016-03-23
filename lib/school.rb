class School 

	attr_accessor :roster

	def initialize(hs)
		@hs = hs
		@roster = {}
	end

	def add_student(name, number)
		if @roster.keys.include?(number)
			@roster[number] << name
		else
			@roster[number] = []
			@roster[number] << name
		end
	end

	def grade(number)
		 @roster[number]
	end

	def sort
		@roster.each do |number, name|
			name.sort!
		end
	end

end
