class School

  def initialize(school)
    @school = school

end

def school
  @school
end

def initialize(roster)
  @roster = {}
end

def roster
  @roster
end

def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    @roster
end

def grade(grade)

  roster[grade]


end

  def sort
     @roster.each do |key, value|
       value.sort!
     end

  end

end
