# code here!
class School

  attr_accessor :name, :roster
  def initialize(name)
  @name = name
  @roster = {}
  end

  def add_student(stud_name, grade)
   if !@roster.has_key?(grade)
      @roster[grade] = []
      @roster[grade] << stud_name
    else
      @roster[grade] << stud_name
    end
  end

    def grade(grade)
      @roster.fetch(grade)
    end

    def sort
      @roster.sort_by(&:first).map { |grade, stud_name| [grade, stud_name.sort]}.to_h

      # hash.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
  end




end
