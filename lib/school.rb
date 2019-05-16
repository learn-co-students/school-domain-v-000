# code here!
class School
  attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  # roster would look like
  # @roster {
  #   10: ["Jeremy", "Josh", "bob"],
  #   11: ["Susie"]
  # }
  def add_student(name, grade)
    # roster that's going to hold all of our students with the key of grade and the value of an array of all the students
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end
