# code here!
class School
	attr_accessor :name, :roster
	
	def initialize(name)
		@name = name
		@roster = {}
	end
	
	def roster 
		@roster
	end
	
	def add_student(student, grade)
		roster[grade] ||= []
		roster[grade] << student
	end
	
	def grade(grade)
		roster[grade]
	end
	
	def sort
		roster.sort.each{|entry| entry[1].sort!}.to_h
	end
	
end
