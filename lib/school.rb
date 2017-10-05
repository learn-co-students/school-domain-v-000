class School
  attr_accessor :roster, :name


  def initialize(roster={}, name)
    @name = name
    @roster = roster
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade (grade)
    roster[grade]
  end

  def sort
    roster.collect do |grade, name|
      roster[grade] = name.sort
    end
    roster
end

end
