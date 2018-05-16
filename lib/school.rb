class School

  def initialize(name)
    @name = name
    roster = {}
  end

  def roster
    roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

end



# def roster
#   roster = {
#     # hash = {"key1" => "value1"}
#     # "Grade 1" => ["Elizabeth","Emily","Kristina"],
#     # "Grade 2" => ["Elizabeth","Emily","Kristina"],
#     # "Grade 3" => ["Elizabeth","Emily","Kristina"]
#   }
# end
