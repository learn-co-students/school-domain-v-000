class School
  attr_accessor :name, :roster
  def initialize(school)
    @school=school
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.include?(grade)
        @roster[grade] << name
        @roster
    else
    @roster[grade] = []
    @roster[grade] << name
    @roster
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map {|key,val| val.sort!}
    @roster
  end
end