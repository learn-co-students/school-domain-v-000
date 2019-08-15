# code here!

class School
	
	attr_reader :name, :roster
	
	
	def initialize(name, roster = {})
		@name = name
		@roster = roster
	end


	def add_student(student_name, grade)
		@student_name = student_name
		@grade = grade
		roster[grade] ||= []
		roster[grade] << student_name
	end

	def grade(student_grade)
		roster.values_at(student_grade).flatten
	end

	def sort
		roster.each {|grade, students| students.sort!}
	end


end
