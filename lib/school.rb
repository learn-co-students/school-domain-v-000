# code here!

class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade_lvl)
    @roster[grade_lvl] = [] if @roster[grade_lvl] == nil
    @roster[grade_lvl] << name
  end

  def grade(grade_lvl)
    @roster[grade_lvl]
  end

  def sort
    aHash = {}
    @roster.each do |key, values|
      aHash[key] = values.sort
    end
    aHash
  end
end