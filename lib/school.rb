class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  # def school_name
  #   @school_name
  # end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name

    # if @roster[grade] == nil
    #   @roster[grade] = [student_name]
    # else
    #   @roster[grade] << student_name
    # end



  end


end # <--- method end
