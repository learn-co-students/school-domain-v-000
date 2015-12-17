class School

  def initialize(name)
    @name
    @roster = {}
  end


  def roster
    @roster
  end


  def add_student(name, grade)
    if roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end


  def grade(num)
    @roster[num]
  end


  def sort
    #sorted_hash = {}

    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end

    roster
  end



end