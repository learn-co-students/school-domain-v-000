# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
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
  end

  def grade(score)
    @roster.fetch(score)
  end

  def sort
    @roster.each_value {|value| value.sort!}
  end

  # def sort
  #   sorted = {}
  #   roster.each do |grade, students|
  #     sorted[grade] = students.sort
  #   end
  #   sorted
  # end
end
