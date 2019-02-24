class	School
	attr_accessor :roster

  def initialize(name)
    @name   = name
		@roster = {}
	end

	def add_student(name, grade)
		@roster.has_key?(grade) ? @roster[grade] << name : @roster[grade] = [name]
	end

	def grade(num)
		@roster[num]
	end

	def sort
		@roster.each do |grade, names|
		  @roster[grade] = names.sort
		end
	end
end
