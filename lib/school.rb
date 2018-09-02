class School

attr_reader :school_name

  def initialize(school_name)
    @school_name=school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
  if roster.include?(grade) == false
      roster[grade] = []
    end
    roster[grade] << name
  end

def grade(grade)
  roster[grade]
end

def sort
  roster.each do |grade, name|
  name.sort!
  end
end
end
