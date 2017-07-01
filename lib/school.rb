# code here!
class School
attr_accessor :roster

def initialize(name, roster = {})
  @name = name
  @roster = roster
end

def add_student(student, grade)
    roster[grade] ||= []
		roster[grade] << student
end

def grade(grade)
		roster[grade]
	end

	def sort
		sorted_roster = roster.each do |grade, students|
			students.sort!
		end
	end

end
