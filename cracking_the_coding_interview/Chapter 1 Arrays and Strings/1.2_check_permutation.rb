# Given two strings,write a method to decide if one is a permutation of the other

def permutation?(s1, s2)
  s1.chars.sort == s2.chars.sort
end

puts permutation?('livada', 'vadlia')
puts permutation?('livada', 'livad')

def permutation_optimal?(s1, s2)
  char_counter = Hash.new(0)
  s1.each { |char| char_counter[char] += 1 }
  s2.each { |char| char_counter[char] -= 1 }
  char_counter.all?(&:zero?)
end

puts permutation?('livada', 'vadlia')
puts permutation?('livada', 'livad')
