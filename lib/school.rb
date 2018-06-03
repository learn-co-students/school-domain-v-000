class School
  
  # attr_accessor :
  attr_reader :new, :student, :roster
  
  def initialize(new)
    @new = new
  end
  
 ROSTER = []
  # def name(name)
  #   @name = name
  # end
  
  # def name
  #   @name
  # end
  
  def add_student(student, school)
    ROSTER << student
  end
  
end