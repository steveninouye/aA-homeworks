class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){ |i| i == 6 || i == 13 ? [] : [:stone,:stone,:stone,:stone] }
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless @cups[start_pos]
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    cup_idx = start_pos
    until stones.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx > 13
      if cup_idx == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif cup_idx == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[cup_idx] << stones.pop
      end
    end
    render
    next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      # ended on store -- get to choose where to start again
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      # ended on empty cup -- switches players' turns
      :switch
    else
      # ended on cup with stones in it -- automatically starts there
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    p1 = (0..5).all? {|n| @cups[n].empty?}
    p2 = (7..12).all? {|n| @cups[n].empty?}
    p1 || p2
  end

  def winner
    p1_stones = @cups[6].length
    p2_stones = @cups[13].length
    return :draw if p1_stones == p2_stones
    return p1_stones > p2_stones ? @name1 : @name2
  end
end
