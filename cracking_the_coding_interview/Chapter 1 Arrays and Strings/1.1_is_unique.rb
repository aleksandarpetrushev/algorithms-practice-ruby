# Implement an algorithm to determine if a string has all unique characters.
# What if you cannot use additional data structures?

require 'set'

def all_unique_characters?(string)
  string.length == Set.new(string.split('')).length
end

puts all_unique_characters?('abcdefg')
puts all_unique_characters?('abcdefga')


# without additional DS
def all_unique_characters_without_ds?(string)
  string.chars.each_with_index { |char, i| return false if string[(i+1)..].include?(char) }

  true
end

puts all_unique_characters_without_ds?('abcdefg')
puts all_unique_characters_without_ds?('abcdefga')


# O(n*log(n))

def all_unique_characters_optimal(string)
  sorted_string = string.chars.sort
  sorted_string[0..-2].each_with_index { |char, i| return false if char == sorted_string[i + 1] }
  true
end

puts all_unique_characters_optimal('abcdefg')
puts all_unique_characters_optimal('abcdefga')
