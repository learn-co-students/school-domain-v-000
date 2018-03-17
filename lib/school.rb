require "pry-byebug"
class School
	attr_accessor :roster
  
	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end
  
  def add_student(student, grade)
  	(@roster[grade] ||= []) << student
  end

  def grade(num)
  	@roster[num]
  end

  def sort
  	roster.each_value do |value|
  	# binding.pry
  		value.sort!
  	end
  	roster
  end

	
	
end
