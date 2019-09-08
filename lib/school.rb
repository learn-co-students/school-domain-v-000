# code here!
class School
	attr_accessor 
	attr_reader :name, :roster

	def initialize (name)
		@name = name
		@roster = {}
	end

	def add_student(stud_name, stud_grade)
		if !roster.include?(stud_grade)
			roster[stud_grade] = []
			roster[stud_grade] << stud_name
		else 
			roster[stud_grade] << stud_name
		end
	end

	def grade(stud_grade)
		return roster[stud_grade]
	end

	def sort
		roster.each do |k,v|
			v.sort!
 		end
	end
end
	  school = School.new("Test School")
      school.add_student("Homer Simpson", 9)
      school.add_student("Bart Simpson", 9)
      school.add_student("Avi Flombaum", 10)
      school.add_student("Jeff Baird", 10)
      school.add_student("Blake Johnson", 7)
      school.add_student("Jack Bauer", 7)





