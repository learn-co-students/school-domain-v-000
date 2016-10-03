class School
attr_reader :name, :roster

def initialize(school_name)
   @name = school_name
   @roster = {}
 end

 def add_student(person, grade)
    @roster[grade] ||= []
    @roster[grade] << person
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade, name| name.sort! }
    return @roster
  end

end
