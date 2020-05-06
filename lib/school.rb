# code here!
class School

  attr_reader :name, :roster


  def initialize(school_name)
  @name=school_name
  @roster={}
  end
  def add_student(name,grade)
    if @roster[grade] == nil
    @roster[grade]=[]
  end
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end
  def sort
    @roster.each do |grade,groster|
      @roster[grade]=groster.sort
    end
    @roster.sort_by {|grade,groster| grade}
    @roster


  end

end
