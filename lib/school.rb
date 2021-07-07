# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if (@roster.has_key?(grade))
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    roster_sorted = {}
    @roster.collect do |grade, name_array|
      roster_sorted[grade] = []
      name_array_sorted = name_array.sort

        name_array_sorted.each do |name|
          roster_sorted[grade] << name
        end

    end

    return roster_sorted

    # @roster.sort.to_h
  end

end
