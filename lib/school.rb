require 'pry'

class School
  attr_reader :name

  def initialize(name)
    @name = name
		@roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
		@roster[grade] ||= []
    if @roster.include?(student)== false
			@roster[grade] << student
		end
   end

  def grade(grade)
    @roster[grade]
  end

  def sort
		result = []
    @roster.each do |k,v|
      result = v.sort
      @roster[k] = result
		end
	end
end