# create class named player
# add a getter / setter for name and lives
# function that takes in a name and sets the lives to 3


# take turn function sets question = MathQuestion.new
# prints "heres you question name"
#  prints the question
# answer = chomp 
# if statement is true puts correct!
# if question false, puts losing a lfie and call lost_life

# lost life functiion
# life -= 1



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


