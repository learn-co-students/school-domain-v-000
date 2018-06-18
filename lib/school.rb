# code here!
class School
	attr_accessor :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		if !@roster[grade]
			@roster[grade] = []
		end
		@roster[grade] << student
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		# @roster is:
		# {
		#  9 => ["AC Slater", "Zach Morris"]
		#  10 => ["Kelly Kapowski..."]
		# }

		# @roster(grade) is:
		# ["AC Slater", "Zach Morris"]

		@roster.each do |grade, students|
			@roster[grade] = students.sort
		end
		@roster
	end
end

dvc = School.new("DVC")
dvc.add_student("Karyme", 12)
dvc.add_student("Jenny", 12)
dvc.add_student("Sally", 12)
dvc.sort