class School

  def initialize(name)
    @name = name
    @school_roster = {}
  end

  def roster
    @school_roster
  end

  def add_student(student, grade)
    if @school_roster.has_key?(grade)
      @school_roster[grade] << student
    else
      @school_roster[grade] = []
      @school_roster[grade] << student
    end
  end

  def grade(grade)
    @school_roster[grade]
  end

  def sort
    #@school_roster.sort_by{|k,v| k}.to_h#.map{|k,v| v.sort}#.sort_by {|k,v| k}.to_h
    #@school_roster.sort_by {|k,v| k}.to_h

    @school_roster.each do |grade, student_array|
      @school_roster[grade] = student_array.sort
    end
    @school_roster
  end

end
