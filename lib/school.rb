class School

  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
end

def add_student(name, grade)
  @roster[grade] ||= []
@roster[grade] << name
end

def grade(grade)
  roster[grade]
end

def sort
      sort_student = {}
  @roster.each do |grade, name|
    sort_student[grade] = name.sort
  end
  sort_student
end

end
