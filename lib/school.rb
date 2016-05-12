class School
	#attr_accessor: 
	attr_reader :school_name, :roster
	
	def initialize(school_name)
		@school_name = school_name
		@roster = {}
		@roster = roster
	end
	
	def add_student
		@name
		@age
	end
	
	def add_student(name,grade)
		roster[grade] ||= []		
		roster[grade] << name
	end
	
	def grade(grade)
		roster[grade]
	end
	
	def sort
		 roster[grade].each do |grade,name|
			name.sort!
		end
		roster
	end

end
