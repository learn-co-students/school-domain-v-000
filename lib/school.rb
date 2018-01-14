class School
attr_accessor :name, :roster

def initialize(name)

  @name = name
  @roster = {}

end

def add_student(student_name, grade)
  if !@roster[grade]
    @roster[grade] = []
  end
  @roster[grade] << student_name
end

def grade(grade_input)
  @roster[grade_input]

end

def sort
  @roster_new = {}
  @roster.each do |key, value|
    @roster_new[key] = value.sort
end
@roster_new
end
end



{
  grade: []
}
