# code here!
class School

  attr_reader :roster #reader returns the value of an instance variable

  def initialize (roster) #call the method initialize on the new object
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] ||= []
    #if self.roster already exist leave it alone or else set self.roster[grade] = []
    self.roster[grade] << name
    #   if @roster.has_key?(grade)
    #    @roster[grade] << name
    #   else
    #    @roster[grade] = [name]
    # end
 end

 def grade(grade)
   self.roster[grade]
 end

 def sort
   self.roster.each do |grade, students|
     students.sort!
  end
 end

end
