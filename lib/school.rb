class School
  attr_reader :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student (name, grade)
    @roster[grade] ||= []
    # It would make sense to sort entries on insert since sorted roster would
    # be a common requirement. But test requires names not be sorted at this time!
    @roster[grade] << name
  end

  def grade (n)
    @roster[n]
  end

  def sort
    # storing sorted output back in roster so next request for sort will be fast
    @roster.each { | grade, names | names.sort! }
  end
end
