class School

  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

def add_student(name, grade)
  @roster[grade] = [] unless roster.include?(grade)
  @roster[grade] << name
end

def grade(grade)
  @grade = grade
end

def grade(grade)
  @roster.values_at(grade).flatten
end

def sort
  @roster.each do |grade, name|
    name.sort! {|a, b| a <=> b}
  end
  end

end
