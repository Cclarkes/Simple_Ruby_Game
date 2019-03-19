#Player will contain the name and lives attached to both players
class Player 
    def initialize(name, lives)
        @name = name
        @lives = lives
    end

attr_accessor :lives, :name

end