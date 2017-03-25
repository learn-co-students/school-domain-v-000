# code here!
class School
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(year)
    @roster[year]
  end

  def sort 
    @roster.map do |grade, name|
      name.sort!
    end
      @roster
    end
  
  
end