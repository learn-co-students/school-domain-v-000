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
		sorted_roster = {}

		roster.each { |grade, students| sorted_roster[grade] = students.sort }

		sorted_roster
	end
end