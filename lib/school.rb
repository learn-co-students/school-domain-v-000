require "pry"
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
      @roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      new_hash = {}
      sorted_names = []
      @roster.each do |grade, grade_names|
        sorted_names = grade_names.sort {|a,b| a <=> b}
        new_hash[grade] = sorted_names
      end
      new_hash
    end

end
