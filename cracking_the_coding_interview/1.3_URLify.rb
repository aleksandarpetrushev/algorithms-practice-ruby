# Write a method to replace all spaces in a string with '%20'.
# You may assume that the string has sufficient space at the end to hold the
# additional characters,and that you are given the "true" length of the string.

def urlify(string)
  string.split.join('%20')
end

# without using #split
def urlify_without_split(string)
  words = []
  current_word = ''
  string.chars.each_with_index do |char, i|
    next if char == ' ' && string[i + 1] == ' '

    current_word += char
    if char == ' '
      words << current_word[0..-2]
      current_word = ''
    end
  end

  words.join('%20')
end

puts urlify_without_split('Mr     John Smith    b')
