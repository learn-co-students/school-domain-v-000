require 'pry'
# code here!
class School

  def initialize(student)
    @student = student
  # pass a block to @roster which stores a default array
  #for a key in hash when it is being initialized:
    @roster = Hash.new{|key,value| key[value] = []}
  #This block now will be executed every time you try to fetch a key when the key does not exist,
  #it creates an empty array for it, otherwise, returns the value.
  end

  def roster # getter method (returns information stored in an instance variable)
    @roster
  end

  def add_student(student, grade)

    # if @roster[grade]
    #   @roster[grade] << student
    # else
    #   @roster[grade] = []
      @roster[grade] << student
    # end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade,student| student.sort!}

  end

end
