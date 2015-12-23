# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, level)
    if @roster.include?(level)
      @roster[level] << name
    else
      @roster[level] = [name]
    end
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.map { |data, value| @roster[data] = value.sort }
    @roster
  end
end