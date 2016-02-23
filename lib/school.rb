class School #{
  #7 => ["Blake Johnson", "Jack Bauer"], 
  #9 => ["Bart Simpson", "Homer Simpson"], 
  #10 => ["Avi Flombaum", "Jeff Baird"]
#}

  
  attr_accessor :name, :grade
  attr_reader :roster 

  
  def initialize(school)
    @roster = {}
     
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
          @roster[grade] << name
        else
          @roster[grade] = []
          @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #@roster.sort_by &:first
    @roster.sort.to_h
  end

end