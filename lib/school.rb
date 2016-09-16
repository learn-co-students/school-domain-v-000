class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= [] # @roster[grade] OR @roster[grade] = []
    # ==> if @roster[grade] is true, go ahead, if not, @roster[grade] = []
    # @roster[grade] = [] unless @roster[grade]
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, student_array|
      sorted_roster[grade] = student_array.sort
    end
    sorted_roster
  end

end
