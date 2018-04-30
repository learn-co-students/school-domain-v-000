class School
attr_accessor :roster, :name, :grade

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end

#:grade => ["student"]
def add_student(name, grade)
  @name = name
  @grade = grade

  roster[grade] = []
  roster[grade] << name


end
# def grade(kids_grade)
#   @grade = grade
# kids_grade.collect do |grade|
#   end
# end

end
