class School
  attr_accessor :school, :roster

  ROSTER = {[]}

  def initialize(school,roster)
    @school = school
    #BRANDS.push(brand) unless BRANDS.include?(brand)
  end


  def add_student(grade,name)
    roster[grade] << name
    # self.condition = "new"
    # puts "Your shoe is as good as new!"
  end

end

end
