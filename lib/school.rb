# code here!

class School
  attr_reader :school_name, :school_roster



  def initialize(school_name)
    @school_name = school_name
    @school_roster = {}
  end

  def add_student(s_name)
    @s_name = s_name
    @school_roster << s_name
  end

end
