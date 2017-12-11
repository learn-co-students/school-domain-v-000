require 'pry'

class School
  def initialize(school_name) #allows you to add the school name after creating the class
    @school_name = school_name
    @roster = {}
  end

  def roster #method for empty roster we'll fill with students
    @roster
  end

  def add_student(student, grade)
      @roster[grade] ||= []
      #if @roster[grade] has a value go through line 15
      #if @roster[grade] doesn't have a value create an array
      @roster[grade] << student #push the student into the array
  end

  def grade(grade)
    @roster[grade]
    #returns the array of values for a specific key
  end

  def sort
    sorted_roster_arrays = {}
    @roster.each do |grade, roster_array|
      sorted_roster_arrays[grade] = roster_array.sort
      #We iterate through the @roster hash to separate the grade and the roster_arrays
      #so we can sort the roster_arrays
      #We make the Grade the Hash's key and the roster_array the Grade's value and push it into the
      #sorted_roster_arrays hash
    end
    return sorted_roster_arrays
    #I return my hash with my sorted arrays.
  end
end
