class School
  attr_accessor :roster, :grade, :name, :sort

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
      @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
      @roster.each do |grades, names|
        @roster[grades] = names.sort
      end
    end
end
