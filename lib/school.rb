class School
attr_accessor :name, :roster

  def initialize(school)
    @name = school
    @roster = {}
  end

  #def roster=(name, grade)
  #  @roster = {}

  #end


  def add_student(name, grade)
    #if @roster.has_key?(grade)
    #@roster[grade] << name
  #else
    @roster[grade] ||= []
    @roster[grade] << name
  #end
  end

  def grade(key)
    @roster[key]
  end

  def sort
      @roster.each do |key, value|
        value.sort!
      end
    end


end
