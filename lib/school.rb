class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
#     if @roster.include?(grade)  #if grade exists
#       @roster[grade].push(name)  # push the student
#     else
#       @roster[grade] = []    # if grade does not exist associate with it an empty []
#       @roster[grade].push(name) # and push the name
#     end
    @roster[grade] ||= [] #  or avoid the upper solution with this ...
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    ordered = {}
    @roster.each do |grade, name|
      ordered[grade] = name.sort
    end
    ordered
  end
end

