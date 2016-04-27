require'pry'
# code here!
class School

attr_accessor :roster

  def initialize(model)
    @model = model
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    #@roster.values_at(grade)
    @roster[grade]
  end

  def sort
    @sorted_roster = {}
    @roster.each {|grade, name| @sorted_roster[grade] = name.sort}
    @sorted_roster
  end

end