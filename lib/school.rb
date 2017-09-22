# code here!
class School

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student,grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      # sorted = value.sort
      @roster[key]=value.sort
    end
    @roster
  end
end
