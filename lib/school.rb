class School
	attr_accessor :school_name, :roster

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(student_name, grade)
		# ( roster.has_key?(grade) ) ? roster[grade] << student_name : roster[grade] = [student_name]
		roster[grade] ||= []
		roster[grade] << student_name
	end

	def grade(school_grade)
		roster[school_grade]
	end

	def sort
		roster.each { |grade, students| students.sort! }
	end
end
