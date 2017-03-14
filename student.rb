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

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end
  def add_player(player_name)
    players << player_name
  end
  def check_player?(player_name)
    players.include?(player_name)
  end
  def points_change(result)
    if result == "Won" then @points += 5
    elsif result == "Lost" then @points += 0
    end
  end
end

class Library

attr_accessor :books

  def initialize(books)
    @books = books
  end
 def book_details
   puts @books
 end
 def find_book(title)
  for book in @books
    if book[:title] == title
      return book
    end
  end
 end
 def find_rental(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
 end
 def add_book(title)
   @books.push({title: title,
   rental_details: {
    student_name: "",
    date: ""}})
 end
 def change_rental(title, new_name, date)
   for book in @books
     if book[:title] == title
       book[:rental_details][:student_name] = new_name
       book[:rental_details][:date] = date
     end
   end
 end
end
