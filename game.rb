class Game
  def initialize
    @players = [Player.new('Player 1'), Player.new('Player 2')]
    @current_player_index = 0
  end

  def start
    loop do
      puts "==== turn #{@current_player_index + 1} ===="
      @players[@current_player_index].take_turn

      display_scores

      break if @players[@current_player_index].lives <= 0

      switch_turn
    end

    end_game
  end

  def display_scores
    @players.each do |player|
      puts "#{player.name}: #{player.lives} lives"
    end
  end

  def end_game
    winner = @players[(@current_player_index + 1) % 2]
    puts "#{winner.name} wins with #{winner.lives} lives remaining!"
  end

  def switch_turn
    @current_player_index = (@current_player_index + 1) % 2
  end

end

