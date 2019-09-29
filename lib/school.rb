class School
attr_reader :name, :roster


def initialize (name)
  @name = name
  @roster = Hash.new()
end


def add_student(student_name, grade)
  if @roster[grade]
    @roster[grade] << student_name
  else
    @roster[grade] = []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end
end

def sort()
  @roster.each do |grade, name|
      @roster[grade] = name.sort {|a,b| a<=>b}
    end
end


end
