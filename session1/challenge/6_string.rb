# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  new_str = ""
  string.split("").each_with_index do |letter, index|
    if return_odds
      index.odd? ? new_str << string[letter] : nil
    elsif !return_odds
      index.even? ? new_str << string[letter] : nil
    end
  end
  new_str
end
