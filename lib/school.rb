class School

attr_accessor :roster
attr_reader :grade

  def initialize(roster)
    @roster = {}
  end



  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    puts "#{@roster}"
  end

  def grade(grade)
    return @roster[grade]
  end


  def sort

    #return @roster.sort_by { |name, age| age }
    st_sort = {}

    @roster.sort.map do |key, value|
      st_sort[key] = value.sort
    end

    return st_sort


  end




end
