require ("minitest/autorun")
require_relative("./lab_part_b.rb")

class TestBankAccount < MiniTest::Test

  def setup

    @sports_team = SportsTeam.new( "Ireland", ["B.O.D", "Johnny Sexton", "Paul O Connell", "Peter Stringer"], "Joe Schmidt", 0)
    
  end

  def test_team_name

    assert_equal("Ireland", @sports_team.team_name)
    
  end

  def test_team_players

    assert_equal(["B.O.D", "Johnny Sexton", "Paul O Connell", "Peter Stringer"], @sports_team.team_players)
    
  end

  def test_team_coach

    assert_equal("Joe Schmidt", @sports_team.team_coach)
    
  end

  def test_set_coach_name
    
    assert_equal("Ian Tennyson", @sports_team.set_coach_name("Ian Tennyson"))

  end

  def test_add_player

    @sports_team.add_player("Thomas Tennyson")
    assert_equal(5, @sports_team.team_players.length)

  end

  def test_check_players_in_team

    assert_equal(false, @sports_team.check_player("Dan"))
    
  end

  def test_win_or_lose

    assert_equal(1, @sports_team.win_or_lose("WIN"))
    
  end

  end