# code here!
class School 
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def roster
    @roster 
  end 

  def add_student(name, grade)
  if @roster[grade] == nil 
    @roster[grade] = []
  end 
    @roster[grade] << name 
  end 


def sort 
 @roster.update(@roster) {|key, value| value.sort {|a,b| a[0] <=> b[0]}}
end 

def grade(num)
  @roster[num]
end 

end 