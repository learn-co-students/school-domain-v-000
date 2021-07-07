# code here!
require 'pry'
class School

  attr_accessor :school_name, :roster

  #value of each key will be an array of studne names
  def initialize(name)
    @school_name= school_name
    @roster = {}
  end

  def add_student(student, grade)
      if !roster[grade]
          roster[grade]= []
          roster[grade]<<student
      #{9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
    else

      roster[grade]<<student

    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort

    #looks at each value of grade and sorting students by alphabetical order
    roster.each { |grade, students|  students.sort!  }
    # => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
  end


end
