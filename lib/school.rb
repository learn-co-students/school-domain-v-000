# Refactored code
class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  # Created a bonus method here that will add a hash of students
  def add_hash_of_students(student_hash)
    student_hash.each do |grade, students|
      @roster[grade] ||= []
      students.each {|student| @roster[grade] << student}
    end
  end

  def grade(grade)
    @roster[grade].sort  # Added the default Ruby #sort method to this to produce cleaner, more organized results
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end

student_hash = {
  9 => ["Zach Morris", "AC Slater"], 
  10 => ["Kelly Kapowski", "Aardvark"], 
  11 => ["Xavier","Screech"]
  }


# Original code below

=begin
class School
  attr_reader :name, :roster, :add_student

  def initialize(name)
    @name = name
    @roster = {}
    @roster
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else 
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    collection = {}
    @roster.each do |grade, students|
      collection[grade] = students.sort
    end
    collection
  end

end
=end
