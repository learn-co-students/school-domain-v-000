# code here!

class School
  attr_accessor :school, :roster
  roster={}
######################################
  def initialize(school_n)
    @school=school_n
    @roster = {}
     end
######################################
def add_student(n,g)
 @roster[g] ||= []
  @roster[g]<<n
end
######################################
def grade(g)
  @roster[g]
end
######################################
def sort
@roster.each{|k,v|v.sort!}
end 
######################################


end
