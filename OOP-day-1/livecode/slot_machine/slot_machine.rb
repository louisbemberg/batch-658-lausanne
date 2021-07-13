class SlotMachine

  def initialize(combo)
    @combo = combo
  end

  SYMBOLS = {
    "joker" => 25,
    "star" => 20,
    "bell" => 15,
    "seven" => 10,
    "cherry" => 5
  }

  def score
    # si trois les mêmes ...
    if @combo[0] == @combo[1] && @combo[1] == @combo[2]
      return SYMBOLS[@combo[0]] * 2
    elsif @combo.include?("joker") && @combo.uniq.length == 2
      return SYMBOLS[@combo.sort[1]]
    else
      return 0
    end
  end

end
