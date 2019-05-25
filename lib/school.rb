# code here!
class School

  attr_accessor :roster, :name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster.keys.include?(student_grade) #we can check that the grade is in the hash OR (avi) checks if value of hash at grade is nil or not
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end

# Avi's solution uses shorthand that relies on the truthy or falsey nature of @roster[grade]
#remember by default any string is truthy. the only things that return falsey are nil and false
#if its true that the @roster[grade] is NOT TRUTHY (aka if it's nil or (falsey))
  #then set roster[grade] = [] (to an empty array)
#the empty pipes means nil

#Avi's solution
=begin
def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
=end

#learn instructor indicated line 29 above is equivalent to
=begin
if !roster[grade]
  	roster[grade] = []
end
=end


#pseudo code
#if roster hash keys include student grade,
  #then push in student name.
#else
  #create a new key of student grade as empty array
  # then push name into it

  def grade(student_grade)
      @roster[student_grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade, students| #you are already iterating into the hash
      #to the students level (values) thus you do not need to call .values on
      #the hash.
      sorted_hash [grade] = students.sort
    end
      sorted_hash
  end


end
