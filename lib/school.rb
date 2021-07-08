class School
  attr_accessor :school, :roster
  attr_writer :student, :grade

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] =[]
      @roster[grade] << student
    end
  end

  def grade(grade)
    if @roster.has_key?(grade)
      return @roster[grade]
    end
  end

  def sort
    @roster.each do |grades, students|
      students.sort!
    end
  end

end
