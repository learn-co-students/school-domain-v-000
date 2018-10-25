# code here!
class School



  def initialize(name)
    @name = name
    @grades = {}
  end

  def roster
    @grades
  end

  def add_student(name, grade)
    # if roster has the grade key (grade 9)
    if roster.key?(grade)
      # push the student 'name' into the array with the key of 9
      @grades[grade] << name
    else
      # create a whole new grade(grade is a key)
      @grades[grade] = []
      # add a student 'name' into that new array with
      # the new key which is a new grade
      @grades[grade] << name
    end

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
    sorted[grade] = students.sort
    end
    sorted
  end
end
