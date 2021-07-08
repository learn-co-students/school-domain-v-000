
# code here!

class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student=(name, grade)
    @name = name
    @grade = grade
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster.each do |key, value|
      if key == grade
        roster[grade]  << name

      end

    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort

    roster.each do |grade, names|
      roster[grade] = names.sort

    end

  end
  end

school = School.new("Bayside High School")
school.roster

#school.add_student("AC Slater", 10)
