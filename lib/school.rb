# code here!

class School

	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
	#'||=' means if a is false, nil or undefined, then evaluate b and set a to the result"
	# '@roster[grade]' = a & '[]' = b
	# result: @roster[grade] = [], b/c can't push an item into an array that is the value of a key that doesn't exist yet
		@roster[grade] ||= []
		@roster[grade] << name
	end
	
	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each { |k, v| v.sort!}
		@roster
	end

end

