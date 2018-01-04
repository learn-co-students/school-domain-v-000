# code here!

class School
attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #add roster here
 end

  def add_student(name, grade)
    if @roster.has_key?(grade) #need to ask roster to see if there is a grade
      @roster[grade] << name
    else
     @roster[grade] = [name] #this is if key of that value
   end
  end

  def grade(grade)
    self.roster[grade] #calling self.roster which returns contents of grade
    # @roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      students.sort!
  end
end

end
