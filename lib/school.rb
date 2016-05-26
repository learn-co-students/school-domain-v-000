class School
	attr_accessor :school_name, :roster #creates setter and getter methods for school_name and roster

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(name, grade)  
		if roster.has_key?(grade)  #checks to see if there is already a key for that grade
			roster[grade] << name  #if so, it shovels in a new value (name)
		else
			roster[grade] = []  #otherwise it creates an empty array for that grade key
			roster[grade] << name  #and shovels in the name value
		end
	end

	def grade(key)
		@roster[key]  #outputs the student names for a particular grade
	end

	def sort
		@roster.each {|key, value| puts "{#{key} => #{@roster[key].sort!}" }  #outputs a list of grade keys, each with a list of student names sorted alphabetically by first name
	end
end