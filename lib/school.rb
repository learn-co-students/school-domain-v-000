# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @student_name = student_name
    @student_grade = student_grade
    if @roster[@student_grade] == nil
      @roster[@student_grade] = []
      @roster[@student_grade] << @student_name
    else
      @roster[@student_grade] << @student_name
    end
  end

  def grade(year)
    @grade = @roster[year]
  end

  def sort
    @sorted_roster = {}
    @roster.each do |key, array_of_names|
      @sorted_roster[key] = array_of_names.sort
    end
    @sorted_roster
  end

end
