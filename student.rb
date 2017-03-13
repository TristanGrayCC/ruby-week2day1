class Student
  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end
  def name
    return @name
  end
  def cohort
    return @cohort
  end
  def change_name(new_name)
    @name = new_name
  end
  def change_cohort(new_cohort)
    @cohort = new_cohort
  end
  def talk
    returns "I can talk!"
  end
  def fav_language(student,language)
    returns "#{student} loves #{language}"
  end
end
