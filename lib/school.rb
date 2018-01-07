require 'pry'
# original code
class School
	attr_accessor :roster, :name
	attr_reader

	ROSTER = {}

	def initialize(school_name)
		@roster = ROSTER
		@name = school_name
	end

	# def add_student(student, grade)
	# 	if self.roster.include?(grade)
	# 		if self.roster[grade].include?(student)
	# 			next
	# 		else
	# 			self.roster[grade] << student
	# 		end
	# 	else
	# 		self.roster[grade] = [student]
	# 	end
	# end

	def add_student(student, grade)
		if !self.roster.keys.include?(grade)
			self.roster[grade] = [student]
		else
			if !self.roster[grade].include?(student)
				self.roster[grade] << student
			end
		end
		#binding.pry
	end

	def grade(grade)
		if self.roster.keys.include?(grade)
			return roster[grade]
		end
	end

	def sort()
		self.roster.sort
# 		self.roster.keys.sort
 	end
 end

# new code

# class School
# 	attr_accessor :roster, :student, :name
# 	attr_reader

# 	ROSTER = {}

# 	def initialize(school_name)
# 		@name = school_name
# 		@roster = ROSTER
# 	end

# 	def add_student(student_name, grade)
# 		if self.roster.include?(grade)
# 			if self.roster[grade].include?(student_name)
# 				self.roster[grade] << student_name
# 		else
# 			self.roster[grade] = [student_name]
# 		end
# 		binding.pry
# 	end

# 	def grade()
# 	end

# 	def sort()
# 	end

# end