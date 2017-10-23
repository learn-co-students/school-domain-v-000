class School
  attr_accessor :roster, :name, :grade


def initialize(school)
  @school = school
  @roster = {}
end

def add_student(name, grade)
  @roster[name] = grade

end

end
