class School

  
  attr_accessor :name, :grade
  attr_reader :roster 

  
  def initialize(school)
    @roster = {}
     
  end

  def add_student(name, grade)
   # if grade.match(@roster[grade])
    #  @roster[grade] << name
    #else
    @roster[grade] = []
    @roster[grade] << name
  #end
  end

  def grade(grade)
  end

  def sort
    @roster.sort()
  end

end