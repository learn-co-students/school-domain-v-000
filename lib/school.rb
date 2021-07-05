class School

# attr_accessor :roster, :name, :grade
attr_accessor :roster
attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
  end

def add_student(student, grade)
  if roster.include?(grade)
    roster[grade] << student
  else
    roster[grade] = []
    roster[grade] << student
  end
    roster[grade]
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}

    roster.sort.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end
