class School

  attr_accessor :roster
  attr_reader :name

  roster = {};

  def initialize(name)
      self.roster = {};
  end

  def add_student(student_name, grade)
    if !(roster.has_key?(grade))
      roster[grade] = [];
    end
    roster[grade] << student_name;
  end

  def grade(grade)
    roster[grade];
  end

  def sort
    roster.map {|grade, students| roster[grade] = students.sort}
    roster;
  end
end
