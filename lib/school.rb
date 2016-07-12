# code here!
class School
	attr_accessor :roster, :name

=begin refactor below
	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		# go into the roster and add a student to the array of students of a certain grade
		# is roster[grade] already an array?
		if @roster.keys.include? grade then
			@roster[grade] << student
		else 
			@roster[grade] = [student]
		end
	end
=end

	def initialize(name)
		@name = name
		@roster = Hash.new{|hash,key| hash[key] = []}
	end


	def add_student(student, grade)
		@roster[grade] << student
	end

	def grade(grade)
		#return all students of a certain grade
		@roster[grade]
	end

	def sort
		#sorted list of all students where strings are sorted alphabetically
		@roster.each do |grade, students|
			#@roster[grade] = students.sort (works same as next line)
			students.sort!
		end
	end

end


