class School

  attr_accessor :roster, :school
  attr_reader :school


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(num)
    roster[num]
  end

  def sort
    sorted_roster = {}

    roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end
