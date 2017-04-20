class School
  attr_reader :school_name, :add_student, :grade
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  def add_student(name, grade)
    @name = name
    @grade = grade
    if roster.include?(grade) != true
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.sort.each_with_object({}) do |(grade_key, name_arrays), name |
      name[grade_key] = name_arrays.sort
      name.sort
    end
  end
    
end