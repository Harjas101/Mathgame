
    class Player 
      attr_accessor :name, :lives, :turn
      def initialize(name)
        self.lives = 3
        self.name = name
        self.turn = false
        puts "New Player"
      end

      def take_life
        if self.lives > 1
          self.lives -= 1
        else 
          self.lives = 0
        end
      end
    end
      #hold data of the lives
      #make lives go down
      #player names