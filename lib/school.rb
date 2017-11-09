class School
  def initialize(name)
    @name = name
    @roster = {}
  end

attr_reader :roster

def add_student(student, grade)
  if @roster.has_key?(grade)
    @roster[grade] << student
  else
   @roster[grade] = []
   @roster[grade] <<  student
  end
end

def grade(grade)
  @roster.values_at(grade).flatten
end

def sort
   @roster.each { |grade, names| names.sort!}
 end

end
