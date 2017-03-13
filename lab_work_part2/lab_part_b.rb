class SportsTeam

  attr_accessor :team_name, :team_players, :team_coach, :points

  def initialize(team_name, team_players, team_coach, points)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
    @points = points
  end

  # def team_name
  #   return @team_name
  # end

  # def team_players
  #   return @team_players
  # end

  # def team_coach
  #   return @team_coach
  # end

  def set_coach_name(new_coach)
    @team_coach = new_coach
  end

  def add_player(new_player)
    @team_players << new_player
  end

  def check_player(players)
    for rugby_player in @team_players
      if rugby_player == players
        return true
      end
    end
  return false
  end

  def win_or_lose(result)
    if result == "WIN"
      @points += 1
    end
  end

end