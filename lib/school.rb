# code here!
class School
  #ROSTER = {}

  def initialize(school)
    @school=school
    @roster={}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.key?(grade)
      @roster[grade]<<name
    else
      @roster[grade]=[]
      @roster[grade]<<name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    Hash[@roster.sort_by{|k,v| v.sort!}]
  end
end
