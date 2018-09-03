class School
  def initialize(school)
    @school = school 
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def grade(number)
    @roster[number]
  end
  
  def add_student(name, grade)
    @student = name
    @grade = grade 
    if @roster.include?(grade) == false 
      @roster[grade] = []
    end
    @roster[grade] << name 
  end
  
  def sort 
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end