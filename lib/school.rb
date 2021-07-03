class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    roster_keys = @roster.keys.sort
    roster_keys.each do |key|
      sorted_roster[key] = []
      sorted_roster[key] = @roster[key].sort
    end
    sorted_roster
  end
end
