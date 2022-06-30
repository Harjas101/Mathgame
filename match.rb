require "./player"
class Match
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1=player1
    @player2=player2
    self.player1.turn = true
    puts "Started a new game"
    self.run_game
  end
  
  def next_turn
    if self.player1.turn
      self.player1.turn = false
      self.player2.turn = true
      puts "NEW GAME"
      self.run_game
    end
    if !self.player1.turn
      self.player1.turn= true
      self.player2.turn= false
      puts "New Turn"
      self.run_game
    end
  end
  def current_score
    puts "#{self.player1.name}: #{self.player1.lives}/3 vs #{self.player2.name}: #{self.player2.lives}"
  end
  def question(player)
    num1 = (rand(15).ceil) +1
    num2 = (rand(15).ceil) +1
    puts "#{player.name}: whats #{num1} + #{num2} equal?"
  inputAnswer = gets.chomp
  realAnswer = num1 + num2
  if inputAnswer.to_i == realAnswer
    puts "lucky guess"
    self.current_score
    self.next_turn
  else
    puts "wow really? no bueno."
    player.take_life
    self.current_score
    self.next_turn
  end
end


  def run_game
    if self.player1.lives.to_i == 0
      puts "#{player2.name} wins by a landslide with a score of #{self.player2.lives}/3 \n GAME OVER"
      exit(0)
    end
      if self.player2.lives.to_i == 0
        puts "#{player1.name} wins by a landslide with a score of #{self.player1.lives}/3 \n GAME OVER"
        exit(0)
      end
      if self.player1.turn
        self.question(self.player1)
      else
        self.question(self.player2)
      end
    end
  end


