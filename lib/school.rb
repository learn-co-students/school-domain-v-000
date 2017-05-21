# code here!# code here!
class School
  attr_accessor :roster, :student

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
   #if grade exists, push to array...else create key and point to empty array
   if roster[grade] == nil
     #create empty array if grade doesnt exist and add student
     roster[grade] = []
     roster[grade] << student
   else
     roster[grade] << student
   end
  end

  def grade(grade)
    roster.values_at(grade).flatten
  end

  def sort
    #return a sorted list of all the students
    roster.each do | grade, name|
      name.sort!
    end
  end

end
