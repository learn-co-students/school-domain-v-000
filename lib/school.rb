class School
  attr_reader :name, :roster

  def initialize(school)
    @name = school
    @roster = {}
  end

  def add_student(student, input_grade)
    if @roster.keys.include?(input_grade)
      @roster.each do |grade, students|
        if grade == input_grade
          students << student
        end
      end
    else @roster[input_grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
