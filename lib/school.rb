# code here!
=begin
class School




  school = School.new

ROSTER = {}
  def initialize(roster)
    @roster = roster
  end

  def roster=(roster)
    @roster = roster
  end

  def roster
    @roster
  end


  def add_student=(student, grade)
    ROSTER[student] = []
    ROSTER[student] << grade
  end

end
=end


class School


#when .new is called on the class School, the method initializes with a name pass as an argument to school like ("Bayside High School")
  def initialize(name)
  @name = name #an instance variable is created that equals to the name argument
  @roster = {} # another instances variable is created that is an empty hash is created after the name instance varibale
  end

  def roster #this method will return the instances variable that is an empty hash after its created
    @roster #this is where it returns it
  end



  def add_student(student_name,grade) #creates a method called add_student which takes 2 arguments; 1)student_name and thier grades
    if @roster[grade] != nil # if the instance varibale roster with a key with grade is NOT equal to NIL
      @roster[grade] << student_name #then push the students name to the roster varibale with that key[grade]
    else
      @roster[grade] = [student_name] # else roster instance variable creatyes a key[grade] and the value equals to the student's name
    end
  end


def grade(grade)
   @roster[grade]
end

def sort
  @roster.each do |key, value| #iterate over the instance varibale roster
    value.sort! #use the sort method to premantly sort the values for the array
  end
end

end
