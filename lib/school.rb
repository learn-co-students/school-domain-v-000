# code here!

class School
  
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster=Hash.new
  end
  
  def add_student(student, grade)
  	roster[grade] ||= [] #create the new key and point it to an empty array if grade=nil
    roster[grade] << student #push the new value into that array
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted=Hash.new
    roster.each do |grade, students| #for each value key pair
      sorted[grade] = students.sort #new sorted hash has sorted students in each grade
    end
   sorted
  end


end
