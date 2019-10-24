class School
  attr_accessor :roster, :name

def initialize(school_name)
  @name = school_name
  @roster = {}
end

def add_student(student_name, grade)
  @roster[grade] ||= []
    @roster[grade] << student_name
end

def grade(grade)
  roster[grade]
end

def sort
  @roster.each {|key, value| value.sort!}
end

end
#don't need to makea  seaparete empty array for name b eca undersood that key has value
# didn't need to iterate
# grades are keys and only exist under roster hash and doesn't need to have its own method
