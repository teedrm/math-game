class Game
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @current_player = @player1
    end

    def checking_lives
        return @player1.lives > 0 && @player_2.lives > 0
      end
    
      def game_condition
        if checking_lives
          puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
          puts "----- NEW TURN -----"
        else
          switch
          puts "----- GAME OVER -----"
          puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
        end
      end
    
      def switch
        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
    
      def start
        while checking_lives
          switch
          @new_question = Question.new
          puts "#{@current_player.name}: #{@new_question.question}"
          @answer = $stdin.gets.chomp.to_i
          
          if @answer == @new_question.solution
            puts "#{@current_player.name}: YES! You are correct"
            game_condition
    
          else 
            puts "#{@current_player.name}: Seriously! No!"
            @current_player.lives -= 1
            game_condition
    
          end
        end
      end
    
    end