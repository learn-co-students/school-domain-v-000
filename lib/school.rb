# code here!
class School
  attr_accessor :roster, :student_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {} #new roster for each new school
  end

  def add_student(student_name,grade)
    if roster[grade] #if there is already a roster for the school
      roster[grade] << student_name #add the student value to the grade key
    else roster[grade] = [student_name] #create a new key, add value to the roster
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort #default is alphabetically and ascending
    roster.each {|grade, students| students.sort!}
    roster
  end

end

school = School.new("Bayside High School")
school.roster
