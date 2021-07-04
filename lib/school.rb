class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roster = @roster.sort.to_h
      @roster.each do |key, val|
        val.sort!
      end
    end

  end

end
