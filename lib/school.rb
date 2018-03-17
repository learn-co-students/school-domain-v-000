# code here!
class School

  attr_accessor  :roster
  attr_reader :roster, :name

  def initialize(school)
    @school = school
    @roster = {}
  end


  def add_student(name, grade)
    @grade = grade
    @name = name
    @roster[@grade] ||= [ ]
    @roster[@grade]<< @name
  end

  def grade(get_grade)
    @roster.fetch(get_grade)
  end
  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end
