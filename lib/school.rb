# code here!

class School
    attr_accessor :name, :roster

  def initialize(name)
      @name=name
      @roster= {}
  end

  def add_student(name,grade)
    if @roster.has_key?(grade) == false
      @roster[grade]=[]
      @roster[grade]<<name
    else
      @roster[grade]<< name
    end
  end
  def grade(grade)
    return @roster[grade]
  end

  def sort
    # newroster={}
    #   @roster.keys.each do |key|
    #     newroster[key]=@roster[key].sort
    #
    # end
    # return newroster
    @roster.keys.each do |key|
      @roster[key].sort!
    end
    @roster
  end
end
