class School

<<<<<<< HEAD

  def initialize(name)
    @name= name
    @roster= {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
=======
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
>>>>>>> 4a2862d8d872d14bf6ae0743fd7b08a9e31df72f
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
<<<<<<< HEAD
    sorted= {}
    @roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end
=======
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
  end
  sorted
end
>>>>>>> 4a2862d8d872d14bf6ae0743fd7b08a9e31df72f
end
