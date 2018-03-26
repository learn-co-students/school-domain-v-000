# school.rb
class School # School class referredto as a 'model' in the domain model
  attr_accessor = :name, :roster
#  attr_reader = :roster

  def initialize(name, roster = {})
    @roster = roster #create empty hash roster upon initialization
    @name = name

  end

  def roster
    @roster
  end

  # @roster = keys - grade levels, value - array of students names
  def add_student(student, grade)
    if @roster.include?(grade) #if grade key already exists in hash
        @roster[grade] << student # add student to that grade
      else @roster[grade] = [] #else create grade key in roster hash
        @roster[grade] << student # and then add student
      end
  end

  def grade(grade_key)
    @roster[grade_key]
  end

  def sort
    @roster.map do |grade_key, students|
      students.sort!
    end
    @roster
  end
end
