class Bottles
  def verse(*verse_numbers)
    "".tap do |verses|
      verse_numbers.each { |i| verses << verse_string(i) }
    end
  end

  def song
    verse(*(0..99).to_a.reverse)
  end

  private

  def verse_string(verse_number)
    <<-VERSE
#{verse_number} #{bottle_or_bottles(verse_number)} of beer on the wall, #{verse_number} #{bottle_or_bottles(verse_number)} of beer.
Take one down and pass it around, #{verse_number - 1} #{bottle_or_bottles(verse_number - 1)} of beer on the wall.
VERSE
  end

  def bottle_or_bottles(verse_number)
    verse_number == 1 ? "bottle" : "bottles"
  end
end
