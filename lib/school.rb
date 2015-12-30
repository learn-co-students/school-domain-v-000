# code here!
class School
	def roster
		@roster
	end
	def initialize(school)
		@school = school
		@roster = {}
	end
	def add_student(name, grade)
		@roster[grade].nil? ? @roster[grade] = name : roster[grade] << name
	end
	def grade(grade)
		@roster[grade]
	end
end