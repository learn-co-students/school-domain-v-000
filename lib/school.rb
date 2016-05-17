class School
  attr_reader :school, :roster, :add_student

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.keys.each do |num|
      @roster[num].sort!
    end
    @roster
  end
end

