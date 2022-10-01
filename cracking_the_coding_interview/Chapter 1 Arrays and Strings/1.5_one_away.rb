# One Away: There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function to check if
# they are one edit (or zero edits) away.

def one_away?(s1, s2)
  s1.length.times do |i|
    s1_with_deletion = s1.dup
    s1_with_deletion[i] = ''
    return true if s1_with_deletion == s2
  end
  s2.length.times do |i|
    s2_with_deletion = s2.dup
    s2_with_deletion[i] = ''
    return true if s2_with_deletion == s1
  end
  [s1.length, s2.length].min.times do |i|
    s1_with_deletion = s1.dup
    s2_with_deletion = s2.dup
    s1_with_deletion[i] = s2_with_deletion[i] = ''
    return true if s1_with_deletion == s2_with_deletion
  end

  false
end

puts one_away?('pale', 'ple')
puts one_away?('pales', 'pale')
puts one_away?('pale', 'bale')
puts one_away?('pale', 'bake')
