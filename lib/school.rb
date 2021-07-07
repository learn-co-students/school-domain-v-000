require "pry"
class School

attr_reader :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)
  if @roster[grade] #if the roster has a key of that grade this line will return that key's value

  @roster[grade] << name #the key exists and we add/shovel the value of name

else
  # the key does not exist, so we add the key value pair
  @roster[grade] = [name]# automatically populates the array with name argument and adds the key
  # @roster[grade] = [] # setting key equal to an empty array
  #@roster[grade] << name # b/c key is equal to an empty array, must add name later
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, name_array|
      sorted[grade] = name_array.sort
  end
  sorted
  end

end
