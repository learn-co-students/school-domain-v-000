# code here!
class School
  def initialize(name)
    @name = name
    @roster={}
  end

  attr_accessor :roster

  def add_student(name,grade)
    if roster.has_key?(grade)
      roster[grade]<< name
    else roster[grade]=[]
      roster[grade]<< name
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    new_roster={}
    roster.each do |grade,name|
      new_roster[grade]=name.sort
    end
    return new_roster
  end

end
