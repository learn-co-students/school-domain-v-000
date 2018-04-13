# code here!

class School

  def initialize(name)
    @school = name
    def roster
      @roster = {}
    end
  end

  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
  end

end
