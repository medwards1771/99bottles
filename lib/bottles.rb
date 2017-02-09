class Bottles

  def song
    verses(99, 0)
  end

  def verses(max, min)
    string = ''
    while min <= max
      string = string << "#{verse(max)}"
      string = string + "\n" if min != max
      max -= 1
    end
    string
  end

  # def verses(hi, lo)
  #   hi.downto(lo).map {|n| verse(n) }.join("\n")
  # end

  def verse(number)
    if number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} #{bottles_or_bottle?(number)} of beer on the wall, #{number} #{bottles_or_bottle?(number)} of beer.\nTake #{pronoun(number)} down and pass it around, #{bottle_phrase(number-1)} of beer on the wall.\n"
    end
  end

  def bottles_or_bottle?(number)
    number >= 2 ? 'bottles' : 'bottle'
  end

  def bottle_phrase(number)
    number == 0 ? 'no more bottles' : "#{number} #{bottles_or_bottle?(number)}"
  end

  def pronoun(number)
    number == 1 ? 'it' : 'one'
  end
end
