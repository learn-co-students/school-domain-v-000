# code here!
class School



  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    if @roster.key?(grade)
      @roster[grade] << name
      else
        @roster[grade] ||= []
        @roster[grade] << name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    sorted = {}
    @roster.each do |grade,name|
      sorted[grade] = name.sort
    end
    sorted
  end

end
