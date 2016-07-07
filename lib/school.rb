class School
	def initialize(school)
		@school = school
		@hash = {}
	end

	def roster
		@hash
	end

	def add_student(student, grade)
		if @hash[grade] == nil
			@hash[grade] = []
			@hash[grade] << student
		else
			@hash[grade] << student
		end
	end

	def grade(grades)
		return @hash[grades]
	end

	def sort
		@hash.each do |grades, student|
			student.sort!
		end
		return @hash
	end

end

	