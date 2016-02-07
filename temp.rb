require 'pry'
class School
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    roster[grade] = []
    roster[grade] << student if roster.include?(student)== false;
  end

  def add_team(hash)
    hash.each do |k,v|
    add_student(k, v) 
  end     

end

my_team = {[5, "John Welch"], [3, "Bill Burr"], [8, "Sam Kinison"]}

flatiron = School.new("Flatiron School")

flatiron.add_team(my_team)

