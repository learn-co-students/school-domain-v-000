# code here!
require 'pry'
class School

attr_reader  :name, :roster
attr_accessor :grd

  def initialize(str)
    @roster = {}
    @name = str

  end
  def add_student(name,grd)

    if(@roster.has_key? grd)
      @roster[grd] << name
    else
    @roster[grd] = []
    @roster[grd] << name
  end
end
def grade(grd)
if(@roster.has_key? grd)
  @roster[grd]
end
end
def sort
  k = @roster.keys # assign keys value array to k
  k.each{|el| @roster[el] = @roster[el].sort} # I used k array to sort the values
@roster = Hash[@roster.sort] # finally we sort keys 
end
end
