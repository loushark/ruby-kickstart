# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_str = ""
    self.split("").each_with_index do |letter, index|
      index.even? ? new_str << self[letter] : nil
    end
    new_str
  end
end
