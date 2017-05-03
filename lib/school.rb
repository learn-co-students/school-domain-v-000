class School
	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(name, grade)
		if @roster.find { |grade_key, student_array| grade_key == grade } == nil
			@roster[grade] = []
			@roster[grade] << name
		else
			@roster.collect do |grade_key, student_array|
				if grade_key == grade
					student_array << name
				end
			end	
		end
	end

	def grade(grade)
		students_in_grade = []
		@roster.each do |grade_key, students_array|
			if grade_key == grade
				students_in_grade = students_array
			end
		end
		students_in_grade
	end	

	def sort
		@roster.each { |grade_key, students_array| students_array.sort! }
	end
end