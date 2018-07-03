require 'pry'

class School
  attr_reader :name, :roster
  #you don't want this as an accessor bc we want that inital roaster to be empty
  #you do NOT need school.roster as an acessor or setter (writer) bc in test suite you will never see school.roster = ? so you don't need to writee that equal to anything...were not testing for that
#when calling a SETTER method use self so it knows that is what you are calling instead of just setting a new local variable

  def initialize(name)
    @name = name
    @roster = {}  #makes roaster an instance variable, @@ would be a CLASS variable
  end

  def add_student(student_name, grade)
    #binding.pry
    self.roster[grade] ||= []
    self.roster[grade] << student_name
#    if @roster.has_key?(grade)
#      roster[grade] << student_name
#    else
#      roster[grade] = [student_name]
#    end
  end
  #who are you calling the roster method on? can't call it on nothing...you are calling it on itself!
    #@roster[grade] ||= []
    #2 possible conditions: empty array or at least empty with that key/value pair OR the key is already tkane! and you need to add to it. add student to the same grade if that grade is already listed (i.e. 9th grade) use the ||=
    #||= means if a then a = a else a = b end


  def grade(grade)
    self.roster[grade]
    #this above method is better bc it is was more flexible! you would have to change @roster in the future! but if you use self.roster you only have to make the change once in your roster method!!!
    #this above mthod is basically saying call self (the def roster method) and bc @roster = roster you are getting that array and you are giving it an argument of grade
    #@roster[grade]
  end

 def sort
   #alphabetize students w/in each grade
    #self.roster[student_name].values.min
    self.roster.each do |grade, student_name|
      student_name.sort!
    end
  end

end
