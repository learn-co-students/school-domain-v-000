# code here!
class School
	attr_accessor :roster, :name

	def initialize(name)
		@name = name
		@roster={}
	end

	def add_student(name, grade)
		if @roster[grade] === nil
			roster[grade] = []
		end
		@roster[grade] << name
	end

	def grade(num)
		@roster[num]
	end

	def sort
		@roster.each do |key, val|
			@roster[key] = val.sort{|a,b| a <=> b}
		end
		@roster
	end
end