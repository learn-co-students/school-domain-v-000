require 'pry'
class School
  attr_reader :roster

  def initialize(name)
   @name = name
   @roster = {}
  end

  def add_student(name, grade)
    # "a ||= b" means a || a = b. If "a" has a value or is true use it otherwise we assign "b" to "a" then use that instead.
    # if roster[grade] has a value already or is true we can go ahead and shovel a name into the grade key
    # if roster[grade] doesnt exist(nil) or false we get "roster[grade] = []" to create a new key
    @roster[grade] ||= []
    @roster[grade] << name

    # if roster.keys.include?(grade)
      # @roster[grade] << name
    # else
      # @roster[grade] = []
      # @roster[grade] << name
    # end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each do |grades, names|
      names.sort!
      #binding.pry
      end
  end
end
