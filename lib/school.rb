require 'pry'
class School
 attr_accessor :roster, :name, :grade, :sort

# @ signabl.... allow to be set by the attr attr_accessor and used by view.
  def initialize(name)
    @roster = { }
    @name = name

  end


 def add_student(name_student, grade)
  if @roster[grade] == nil
     @roster[grade] = []
   end
  #  To add a single key-value pair, assign the value to the element lookup expression for the key: that is, call hash[key]=value. Assignment will override any previous value for that key
   @roster[grade] << name_student  #name of student and student grade.
  end

  def grade(grade)
    roster[grade]

  end

   def sort
    new_hash = {}
    roster.each do |grade, names|
      # sort the students
       # push them into the new hashs
    new_hash[grade] = names.sort
       #or
      # Use another iterator the manipulate the hash so it return what ever it manipulated.
    end
    new_hash # we call the new roster a.k.a new_hash in this method.
   end

end
