# code here!
class School


  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |key, array|
      array.sort!
    end
    @roster
  end

end

