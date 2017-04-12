#   ~~~HAVICK WAS HERE~~~

class School
  attr_accessor  :roster, :name

  def initialize(school)
    @school = school
    @roster = {}
  end



def length
  @length = roster.length
end

def add_student(name, grade)
  @roster[grade] = [] if !(@roster.include?(grade))
  @roster[grade] << "#{name}"

end

def grade(grade)
  @roster[grade]
end
def sort
  sorted = Hash[@roster.sort_by {|grade, name| grade}]
sorted
end
end
