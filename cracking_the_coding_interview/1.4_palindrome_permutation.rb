# Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome.
# A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters.
# The palindrome does not need to be limited to just dictionary words.

def palindrome_permutation?(string)
  char_array = string.gsub(' ', '').chars
  char_array == char_array.reverse
end

puts palindrome_permutation?('taco cat')
puts palindrome_permutation?('atco cta')
puts palindrome_permutation?('atco123® cta')
