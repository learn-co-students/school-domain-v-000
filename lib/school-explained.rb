require 'pry'

class School # refer as the "model" in the domain model.
  attr_accessor :student
  attr_writer :roster, :grade
  attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
    puts "roster is empty:  #{@roster}"
    puts "School is #{@school}"
  end

  def roster
    @roster
    puts "roster hash is: #{@roster}"
  end

  def add_student(student, grade)
    # binding.pry
    unless @roster.include?(grade)
      @roster[grade] = []
      puts "roster added grade #{grade}, and grade array is empty: #{@roster[grade]}"
    end
    @roster[grade] << student
    puts "added #{student} to grade #{grade}, grade array is now: #{@roster[grade]}"
  end

  def grade(grade)
    @roster[grade]
    puts "grade #{grade} students are: #{@roster[grade]}"
  end

  def sort
    @roster.keys.map { |grade| @roster[grade].sort! }
    @roster
    puts "roster sorted: #{@roster}"
  end

end

school = School.new("Bayside High School")
school.roster

school.add_student("Zach Morris", 9)
school.roster

school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
# => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}

school.grade(9)
# => ["Zach Morris", "AC Slater"]

school.sort
# => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
