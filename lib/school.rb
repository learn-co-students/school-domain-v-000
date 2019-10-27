# code here!
class School

attr_accessor :name, :grade
attr_reader :roster

  def initialize(roster)
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << "#{name}"
    else
      @roster[grade] << "#{name}"
    end

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    keys = []
    values = []
    keys = @roster.keys.sort
    new_roster = {}
    keys.each do |key|
        values = @roster[key]
        new_roster[key] = []
        new_roster[key] = values.sort
    end
    @roster = new_roster
  end

end
