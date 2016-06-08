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

#add_student setter method
  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[grade] = []
    # if grade == :suite_a && value[0] == "A" #alternative tp this is name.start_with?("A")
    #   winner = value
    # end
    @roster[grade] << student
    # 
    # if @roster.key==grade
    #   @roster[grade].delete
    #   @roster[grade] << student
    # else
    # @roster[grade] << student
    # end
  end
end
