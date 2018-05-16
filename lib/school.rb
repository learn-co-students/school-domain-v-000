# code here!
class School
  attr_accessor :roster
  attr_reader :school
  def initialize(n)
    @school = n
    @roster = {}
  end
  def add_student(n,g)
     if self.roster.empty?
       self.roster = {g => [n]}
     else
         if self.roster.keys.include?(g)
              self.roster[g] << n
         else
              self.roster[g] = [n]
         end
     end
  end
  def grade(g)
    self.roster[g]
  end
  def sort
    @sort = {}
    self.roster.keys.sort.each { |chr| @sort[chr]= roster[chr].sort  }
    return @sort
  end
end
