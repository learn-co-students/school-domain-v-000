class School
  attr_accessor :school
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name #if @roster.all?{|grade, subroster| subroster.none?{|student| student == name}}
    #sort #This would be a good place to run sort to keep the list sorted
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, subroster| subroster.sort!}
  end

end
