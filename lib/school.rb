# code here!
class School

  attr_reader :name, :roster

  def initialize(school_name)
    @name = school_name
    roster = {}
  end

  def add_student(student_name, grade)
    #add students and grade to roster hash, key grade and value student array
#     hash[new_key] = []
#     hash[new_key] << new_value_for_value_array
#
#     hash
#      => {"new_key"=>["new_value_for_value_array"]}
     roster[grade] = []
     roster[grade] << student_name

  end

end
