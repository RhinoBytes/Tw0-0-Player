class MathQuestion
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end


  def ask_question
    puts "What is #{@num1} + #{@num2}?"
  end

  def correct?(answer)
    answer == @num1 + @num2
  end

end

