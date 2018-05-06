class School
  attr_reader :roster

  def initialize(student)
    @student = student

    @roster = Hash.new{|key, value| key[value] = []}
  end

  def add_student(student, grade)
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, student| student.sort!}
  end


end

school = School.new("Bayside High School")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
