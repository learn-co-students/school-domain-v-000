class School
  attr_accessor :name, :roster

  #initialize creates the methods for name and roster.
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    #what is "||="
    #need to create the new key and point it to an empty Array
    #roster[grade] is the new key which is the grade of the student being added
    #if roster[grade] is undefined then assign the value of the array, otherwise leave it alone.
    roster[grade] ||= []
    #pushing the student_name into the new array.
    roster[grade] << student_name
  end

  #method that returns all students that are part of the same grade level.
  def grade(student_grade)
    #this calls roster[student_grade]
    roster[student_grade]
  end

  def sort
    #creating a new hash to return the sorted keys and values
    sorted = {}
    #iterate through the roster
    roster.each do |grade, students|
      #creating the key value in the hash by grade and sorting the students as the value
      sorted[grade] = students.sort
    end
    #returning the new hash
    sorted
  end

end
