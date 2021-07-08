class School

  attr_accessor :student_name, :grade
  attr_reader :school, :roster

  school = School.new

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name, grade)

    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each_key do |key|
      student_list = @roster[key] 
      @roster[key] = student_list.sort
    end
  end

end
