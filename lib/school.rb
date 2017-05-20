# code here!

class School
  attr_accessor :student, :grade, :roster 
  
  def initialize(school_name)
    #@school_name = school_name
    #empty hash 
    @roster = {}
  end
  
  def add_student(student, grade)
    #If the grade doesn't exsist then create an empty key/pair and push grade key value into it 
    if @roster[grade]== nil 
        @roster[grade] = []
        @roster[grade] << student
    else
      #add students to exsisting grade 
    @roster[grade] << student
  end
end

def grade(grade)
  roster[grade]
end 

def sort
roster.sort_by {|key, value| key}
end 

def sort
  roster.each do |key, value|
roster[key] = value.sort  
end 
end 

  end 