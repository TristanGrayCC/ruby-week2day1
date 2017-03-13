class Student

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
    return "I can talk!"
  end
  def fav_language(language)
    return "#{self.name} loves #{language}"
  end
end

class SportsTeam

  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end
end
