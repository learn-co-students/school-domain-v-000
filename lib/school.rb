class School
  attr_accessor :roster

  def initialize(school_name)
    @shool_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_students = {}
    roster.each do |key, value|
      sorted_students[key] = value.sort
    end
    sorted_students
  end
end



new_school = School.new('that school')
new_school.roster #=> {}
