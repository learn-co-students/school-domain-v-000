# code here!
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.empty? || !@roster.has_key?(grade)
      (@roster[grade] = []) << name
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    (@roster.each { |k, v| v.sort! }).sort_by { |k, v| k }.to_h
  end
end