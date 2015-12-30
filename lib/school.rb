# code here!
class School
	def initialize(school)
		@school = school
		@roster = Hash.new([])
	end
	def add_student(name, grade)
		@roster[grade] << name
	end
	def grade(grade)
		@roster[grade]
	end
end