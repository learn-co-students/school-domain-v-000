require "pry"

class School
  attr_accessor :roster, :name, :grade

  # def roster
  #   @roster
  # end
  # def roster=(roster)
  #   @roster = roster
  # end

  def initialize(school)
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(year)
    roster[year]
  end

  def sort
    roster.each do |year, data|
        data.sort!
    end
    roster
  end

end
