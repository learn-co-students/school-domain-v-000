class School
	attr_accessor :name, :roster



	def initialize(name)
		@name = name
		@roster = {}
	end

	

	def add_student(student,grade)
		
		if roster.keys.include?(grade)
			roster[grade] << student 
		else
			roster[grade] = []
			roster[grade] << student
		end
	end
	
	def grade(number)
		return roster[number]
	end

	def sort 
		roster.collect do |grade, students|
			students.sort!
		end
		roster
	end


end




