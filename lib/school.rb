# code here!

class School




  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
   @roster
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade]=[]
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade,names| names.sort!}

    #@roster.sort_by do |grade, names|exit
    
     # names.collect do |names|
      #  names
      #end
    #end

  end


end