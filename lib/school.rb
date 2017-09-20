# code here!
class School
    attr_reader :roster, :name

  def initialize(name)
      @name = name
      @roster = {}
  end

  def add_student(student, grade)
    # create key IF key doesn't exist and add student... << student if it does
    if @roster[grade]
        @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    #returns all students in that grade
    @roster[grade]
  end

  def sort
    #sorts each array alphabetically
    @roster.map do |grade, array|
      @roster[grade] = array.sort
    end
    @roster
  end
end
# rest array for sort method @roster = {9 => ["harry", "bob"], 10 => ["Jan", "Babs"], 7 => ["bi"]}
