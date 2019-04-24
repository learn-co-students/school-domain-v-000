class School

def initialize (name)
  @name == name
  roster = {

  }
  @roster = roster
end

def roster
  @roster
end


def add_student(student_name, grade)

  if @roster[grade] == nil
    @roster[grade] = []
  end
  @roster[grade] << student_name

end


def grade(grade)
  return @roster[grade]
end

def sort
  sorted_hash = {}
  @roster.sort.each do |grade, name_array|
    sorted_hash[grade] = (name_array.sort)
  end
  sorted_hash
end
end
