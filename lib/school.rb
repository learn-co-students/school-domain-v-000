class School

#//------------------------------------------------------------------------
# sipmle setters/getters (if any)
#//------------------------------------------------------------------------
attr_reader :roster



#//------------------------------------------------------------------------
# #initialize
#//------------------------------------------------------------------------
def initialize(name)
      @name = name
      @roster = {}
end



#//------------------------------------------------------------------------
# #add_student
#//------------------------------------------------------------------------
def add_student(name,grade)
      #if grade already exists, just shovel onto existing array
      #if grade does not exist, create new key/value pair w one item array
      if @roster.has_key?(grade)
        @roster[grade] << name
      else
      roster[grade] = [name]
    end
end


#//------------------------------------------------------------------------
# #grade
#//------------------------------------------------------------------------
def grade(grade)
return @roster[grade]
end

#//------------------------------------------------------------------------
# #sort
#//------------------------------------------------------------------------
def sort
  #sort each array of the hash
  @roster.each {|key,value|
                            value.sort!{|a,b| a<=> b}

              }

  return @roster
end


#//------------------------------------------------------------------------
end
