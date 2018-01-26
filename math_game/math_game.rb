class Players
  attr_reader :lives, :name

  def initialize
    puts "please enter your preferred name:"
    @name = gets.chomp
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end

class Questions
  attr_reader :first_int, :second_int, :operator_selected, :response

  def initialize
    @first_int = rand(1..20)
    @second_int = rand(1..20)
    @operator = [:+, :-, :*]
  end

  def prompt_player_for_answer
    @operator_selected = @operator.sample
    puts "what does #{@first_int} #{@operator_selected} #{@second_int} equal?"
    @response = gets.chomp.to_i
  end

  def verify_answer
    if @response == eval(@first_int.to_s + @operator_selected.to_s + @second_int.to_s)
      true
    else
      false
    end
  end
end

class Turn
  attr_reader :result

  def initialize(player)
    @player = player
    @result = false
  end

  def one_turn
    puts "--NEW TURN--"
    puts "#{@player.name}'s turn"
    question = Questions.new
    question.prompt_player_for_answer
    if question.verify_answer == false
      puts "wrong! the answer is #{eval(question.first_int.to_s + question.operator_selected.to_s + question.second_int.to_s)} - you lose a life!"
    elsif question.verify_answer == true
      puts "that's right! the answer is #{eval(question.first_int.to_s + question.operator_selected.to_s + question.second_int.to_s)}"
      @result = true
    end
  end
end

class Game

  def initialize
    @player_one = Players.new
    @player_two = Players.new
    @turn_count = 0
    @games_played = 0
  end

  def replay?
    puts "would you like to play again?"
    answer = gets.chomp
    if answer.include? "yes"
      @games_played += 1
      puts "---you have played #{@games_played} times---"
      Game.new.game
    elsif answer.include? "no"
      puts "---thanks for playing!---"
    end
  end

  def game
    while (@player_one.lives > 0 && @player_two.lives > 0) do
      if @turn_count.even?
        active_player = @player_one
        active_player_name = @player_one.name
      else
        active_player = @player_two
        active_player_name = @player_two.name
      end
      turn = Turn.new(active_player)
      turn.one_turn
      if turn.result == false
        active_player.lose_life
      end
      @turn_count += 1
      puts "#{@player_one.name} has #{@player_one.lives}/3 left | #{@player_two.name} has #{@player_two.lives}/3 left"
    end
    # if one player has 0 lives left, game ends
    if @player_one.lives > 0
      puts "game over, #{@player_one.name} wins!"
      replay?
    else
      puts "game over, #{@player_two.name} wins!"
      replay?
    end
  end
end

Game.new.game

# TODO: Restarting the game does not ask the players for their name again, it assumes that the same people are playing again



