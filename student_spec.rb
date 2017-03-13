require ("./student.rb")
require "minitest/rg"
require "minitest/autorun"

class TestStudent < MiniTest::Test

  def setup
    @student_a = Student.new("Dave",11)
  end

  def test_name
    assert_equal("Dave", @student_a.name)
  end
  def test_cohort
    assert_equal(11, @student_a.cohort)
  end
  def test_change_name
    @student_a.change_name("Bob")
    assert_equal("Bob", @student_a.name)
  end
  def test_change_cohort
    @student_a.change_cohort(12)
    assert_equal(12, @student_a.cohort)
  end
  def test_talk
    assert_equal("I can talk!", @student_a.talk)
  end
  def test_fav_language
    output = @student_a.fav_language("Ruby")
    assert_equal("Dave loves Ruby", output)
  end
end

class TestSportsTeam < MiniTest::Test

  def setup
    @team_a = SportsTeam.new("Wildcats",["Tom", "Callum", "David"], "JimBob")
  end

  def test_name
    assert_equal("Wildcats", @team_a.name)
  end
  def test_players
    assert_equal(["Tom", "Callum", "David"], @team_a.players)
  end
  def test_coach
    assert_equal("JimBob", @team_a.coach)
  end
  def test_name_change
    @team_a.name = "Fighting Phoenix"
    assert_equal("Fighting Phoenix", @team_a.name)
  end
  def test_players_change
    @team_a.players = []
    assert_equal([], @team_a.players)
  end
  def test_coach_change
    @team_a.coach = "Bob"
    assert_equal("Bob", @team_a.coach)
  end
  def test_add_player
    @team_a.add_player("Richard")
    assert_equal(["Tom", "Callum", "David", "Richard"], @team_a.players)
  end
  def test_check_player
    result = @team_a.check_player?("Tom")
    assert_equal(true, result)
  end
  def test_points_change
    @team_a.points_change("Won")
    assert_equal(5, @team_a.points)
  end
  def test_points_change
    @team_a.points_change("Lost")
    assert_equal(0, @team_a.points)
  end
end

class TestLibrary < MiniTest::Test

  def setup
    @our_library = Library.new(@books = [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
       }},
       {
         title: "fake_book",
         rental_details: {
          student_name: "Bob",
          date: "07/07/97"
        }},
        {
          title: "fake_book2",
          rental_details: {
           student_name: "BJames",
           date: "08/07/97"
         }}
     ])
  end
  def test_book_list
    assert_equal([{
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
     }},
     {
       title: "fake_book",
       rental_details: {
        student_name: "Bob",
        date: "07/07/97"
      }},
      {
        title: "fake_book2",
        rental_details: {
         student_name: "BJames",
         date: "08/07/97"
       }}
   ], @our_library.books)
  end
  def test_find_book
    assert_equal({
      title: "fake_book",
      rental_details: {
       student_name: "Bob",
       date: "07/07/97"
     }}, @our_library.find_book("fake_book"))
  end
  def test_find_rental
    assert_equal(
      {student_name: "Bob",
       date: "07/07/97"
     }, @our_library.find_rental("fake_book"))
  end
  def test_add_book
    @our_library.add_book("new_book")
    result = @our_library.find_book("new_book")
    assert_equal(result, {title: "new_book",
    rental_details: {
     student_name: "",
     date: ""}})
  end
  def test_rental_change
    @our_library.change_rental("new_book","Dave", "07/07/97")
    result = @our_library.find_rental("new_book")
    assert_equal({student_name: "Dave",
     date: "07/07/97"}, result)
  end
end
