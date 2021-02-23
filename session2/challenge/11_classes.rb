# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  def initialize(bottles)
    @bottles = bottles
  end

  def split_num
    num = @bottles.to_s.split("")
    num[1].to_i
  end

  def num_bottles
    bottles = {
      1 => "one", 2 =>"two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven",
      8 => "eight", 9 => "nine", 10 => "ten"
    }
    case
    when @bottles <= 0 then "Zero"
    when @bottles >= 99 then "Ninety-nine"
    when @bottles > 90 then "Ninety-#{bottles[split_num]}"
    when @bottles > 80 then "Eighty-#{bottles[split_num]}"
    when @bottles > 70 then "Seventy-#{bottles[split_num]}"
    when @bottles > 60 then "Sixty-#{bottles[split_num]}"
    when @bottles > 50 then "Fifty-#{bottles[split_num]}"
    when @bottles > 40 then "Fourty-#{bottles[split_num]}"
    when @bottles > 30 then "Thirty-#{bottles[split_num]}"
    when @bottles > 20 then "Twenty-#{bottles[split_num]}"
    else bottles[@bottles].capitalize
    end
  end

  def take_one_down
    @bottles = @bottles - 1
    num_bottles
  end

  def print_song
    song = ""
    i = 0
    until i == @bottles
      if @bottles == 1
        puts "#{num_bottles} bottle of beer on the wall,\n#{num_bottles} bottle of beer,\nTake one down, pass it around,\n#{take_one_down} bottles of beer on the wall."
      elsif @bottles == 2
        puts "#{num_bottles} bottles of beer on the wall,\n#{num_bottles} bottles of beer,\nTake one down, pass it around,\n#{take_one_down} bottle of beer on the wall."
      else
        puts "#{num_bottles} bottles of beer on the wall,\n#{num_bottles} bottles of beer,\nTake one down, pass it around,\n#{take_one_down} bottles of beer on the wall."
      end
    end
  end
end
