require "pry"
class School

#getter methods
  attr_reader :student, :grade, :add_student  #returns information stored in each of these variables
  #setter methods
  attr_accessor :roster, :name

#name initialize and settter method
  def initialize(name)
    @name = name
    @roster = {}
  end

#add_student method
  def add_student(student, grade)
    @student = student
    @grade = grade

    #failed code
    # if @roster[grade] = [] || @roster.include?(grade)
    #   @roster[grade] << student
    # else
    #   @roster[grade] = student
    # end

    if roster[grade] == nil
      roster[grade] = [student]
    else
      roster[grade] << student
    end

  end
end
