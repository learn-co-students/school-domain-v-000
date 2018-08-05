class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster 
  end
  
  def add_student(student, grade)
     @student = student
     @grade = grade
      if @roster.include?(grade) == false
        @roster[grade] = []
      end 
     @roster[grade] << student
  end
  
  def grade(year)
    @roster[year]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort 
    end
  end
end

