class School
  attr_accessor :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade]<< name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
      temp = {}
      roster.each do |grade, name|
        temp[grade] = name.sort
      end
    temp
  end

end
