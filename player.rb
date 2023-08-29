class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def take_turn 
    question = MathQuestion.new
    puts "#{@name}, here's your question:"
    question.ask_question

    answer = gets.chomp.to_i

    if question.correct?(answer)
      puts "Correct!\n\n"
    else
      puts "Incorrect! Losing a life.\n\n"
      lost_life
    end
  end

  def lost_life
    @lives -= 1
  end

end


