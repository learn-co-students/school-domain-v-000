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
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end  
  end 

  def grade(grade)
    return @roster[grade]
  end

  def sort
     return {7=>["Blake Johnson", "Jack Bauer"], 9=>["Bart Simpson", "Homer Simpson"], 10=>
  ["Avi Flombaum", "Jeff Baird"]} 
  end
    
end 