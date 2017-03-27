class School
  attr_accessor :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name #if @roster.all?{|grade, subroster| subroster.none?{|student| student == name}}
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, subroster| @roster[grade] = subroster.sort}
  end
  
end