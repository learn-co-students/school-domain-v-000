class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @sorted_roster = {}
      @roster.keys.sort.each do |grade|
        @sorted_roster[grade] = @roster[grade].sort
      end
      @sorted_roster
    end

  end




end
