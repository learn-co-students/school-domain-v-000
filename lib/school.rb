
#1 create class School that can be initialized with a name (??)
class School
  attr_accessor :roster, :school_name
  attr_reader

#2 roster = empty hash at initialize
#    will be built out to contain keys of grade levels & values will be array of student names.
  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

# add data to roster hash
# {grade => ["student", "student2"]}
  def add_student(name, grade)
    if roster[grade]       # if grade exists in roster
       roster[grade] << name  # add new student to grade level
      else                   # if this grade not yet in roster
       roster[grade] = []  # create empty student array for grade key
       roster[grade] << name  # then add 1st student to grade
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort(roster)

  end

# class end below
end
