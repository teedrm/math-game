class Question
    attr_reader :solution, :question
    def initialize
        @number1 = rand(1...20)
        @number2 = rand(1...20)
        @solution = @number1 + @number2
        @question = "What does #{number1} plus #{number2} equal?"
    end
end