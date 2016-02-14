class School
attr_accessor :roster

def initialize (school_name)
  @school_name=school_name
  @roster={}
end
def add_student(name,grade)
  if @roster[grade]==nil
    @roster[grade]=[]
  end
@roster[grade]<<name
end

def grade(grade)
  @roster[grade]
end

def sort
 @roster.collect do |grade,students|
   students.sort!
  end
  @roster
end

end