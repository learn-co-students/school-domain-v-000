# code here!

class School

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def roster=(roster)
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end

     # if the roster hash already has a grade key, then
      #  add the name to the array
       # otherwise, set the grade key equal to an empty array
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value do |array|
      array.sort!
    end
  end

end
