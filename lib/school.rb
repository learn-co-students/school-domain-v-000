# code here!
class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name=name
    @roster = {}
  end

  def add_student(student, grade_of_student)
    if @roster[grade_of_student] == nil
      @roster[grade_of_student] = []
    end
    @roster[grade_of_student] << student
  end

  def grade(grade_roster)
    return roster[grade_roster]
  end

  def sort
    @roster.each do |r|
      array = r[1]
      array.sort_by! {|b| b.downcase}
    end
    return @roster
  end
end
