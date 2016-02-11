class School
  
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade_number)
    @roster[grade_number]
  end


  def sort
    sorted_list = {}
    @roster.each do |grade, students_array|
      sorted_list[grade] = students_array.sort
    end
    sorted_list
  end



end