class Simon
  COLORS = %w(red blue green yellow)
  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    print "You have 5 seconds to memorize the sequence.\n
      >>Press ENTER when ready::"
    gets
    add_random_color
    p seq
    sleep(5)
    system "clear"
  end

  def require_sequence
    puts "What was the sequence?"
    gets.chomp
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    puts "CORRECT!"
  end

  def game_over_message
    puts "Sorry, the sequence was #{seq}\n
      You lasted #{sequence_length} turns\n
      Great Job!"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
