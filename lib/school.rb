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

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort 
    end

  end

end
