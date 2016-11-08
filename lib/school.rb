# code here!
class School

  def initialize(school)
    @school = school

  end

  def roster
    @roster = {}

  end

  def add_student(name,grade)

    @roster[grade] ||= []

    @roster[grade] << name

  end


end
