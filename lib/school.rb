class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster=(roster)
    @roster = roster
    ROSTER << @roster
  end


  def add_student(name, grade)
    if @roster.empty?
      @roster[grade] = []
      @roster[grade] << name
    elsif @roster.keys.include?(grade)
      @roster[grade] << name
    elsif @roster.keys.include?(grade) == false
      @roster[grade] = [name]
    end 
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, name| name.sort!}
      @roster.to_h
    end
  end
