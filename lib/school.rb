class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @ROSTER = {}
  end

  def roster
    @ROSTER
  end

  def add_student (name, grade)

    if @ROSTER.has_key?(grade) == false
    @ROSTER[grade] = []
    @ROSTER [grade] << name
    else @ROSTER [grade] << name

    end
  end

  def grade(num)
    @ROSTER[num]
  end

  def sort
    sorted = {}
    @ROSTER.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted        
  end

end
