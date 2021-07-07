# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name=name
    @roster={} #key is grade, value is array of student names
  end

  def add_student(name, grade)
    #adds student's name and grade to roster hash
    roster[grade] ||= [] #checks if grade exists, if it doesn't makes a new arrays
    roster[grade] << name #pushes name into that grade array
  end

  def grade(grade)
    #returns all the students in specified grade
    roster[grade]
  end

  def sort
    #return a sorted list of all the students where the strings in
    #student arrays are sorted alphabetically
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
