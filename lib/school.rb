# code here!
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  def grade(num)
    @roster[num]
  end
  def sort
    sortRoster = {}
    @roster.keys.sort.each {|e|
      sortRoster[e] = @roster[e].sort
    }
    sortRoster
  end
end
