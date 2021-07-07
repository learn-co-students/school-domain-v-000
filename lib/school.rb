# code here!
class School
  attr_accessor :roster, :name, :grade

  def initialize(name)
   @name=name
   @roster={}
  end
  def add_student(name, grade) 

    @roster[grade]||=[]
    @roster[grade] << name

end
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sort={}
    @roster.each do |key, value|
      sort[key]= value.sort
    end
    sort
  end
end


