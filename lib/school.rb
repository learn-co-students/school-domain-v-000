class School

def initialize(name)
   @name = name
end

def roster
  @roster = {}
end

def add_student(grade, student)
  roster[grade] ||= []
  roster[grade].push(student)
end


end
