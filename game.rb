#Game will contain the loop for turns
class Game
    attr_accessor :turn, :p1, :p2
    def initialize(turn, p1, p2)
        @turn = turn
        @p1 = p1
        @p2 = p2
    end

    def player_chooser
        if (@turn % 2) == 0
            return @p2
        else
            return @p1
        end
    end

    def question_builder
        @current_player = player_chooser
        @num1 = rand(20)
        @num2 = rand(20)

        if @p1.lives == 0
            puts "---GAME OVER---\n #{p2.name} wins with #{p2.lives} lives remaining.\n See you on the flipside, nerds!"
        elsif @p2.lives == 0
            puts "---GAME OVER---\n #{p1.name} wins with #{p1.lives} lives remaining.\n See you on the flipside, nerds!"
        else
            puts "----ROUND #{@turn}: FIGHT-----"
            puts "#{@current_player.name}: what does #{@num1} plus #{@num2} equal?"
            input = gets.chomp
            @num3 = @num1 + @num2

            if input.to_s == @num3.to_s
                puts "---CORRECT--- \n#{@current_player.name}, that's right!"
                puts "---SCORE--- \n#{@p1.name} : #{p1.lives} lives remaining, \n#{@p2.name} : #{p2.lives} lives remaining"
                @turn = @turn + 1
                question_builder
            else
                @current_player.lives = @current_player.lives - 1
                puts "---FAKE NEWS--- \n#{@current_player.name}, you are the worst. Good day sir."
                puts "---SCORE--- \n#{@p1.name} : #{p1.lives} lives remaining, \n#{@p2.name} : #{p2.lives} lives remaining"
                @turn = @turn + 1
                question_builder
            end 
        end 
    end
end