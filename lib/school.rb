# code here!
require 'pry'
class School

attr_reader :roster, :name, :grade

	def initialize(roster)
		@roster = {}
	end

	def add_student (name, grade)
		@name = name
		@grade = grade
				roster[grade]  ||= []

				roster[grade] << name

	end

	def grade (grade)
		roster[grade]
end

def sort
	students = {}
	 roster.each do |grade, student|
		 students[grade]
		 students[grade] = student.sort
	 end
students
 end




end
