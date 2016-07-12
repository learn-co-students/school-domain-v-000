# code here!
class School
  attr_reader :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    @roster[grade]
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      value.sort! {|a,b| a <=> b}
    end
  end

end