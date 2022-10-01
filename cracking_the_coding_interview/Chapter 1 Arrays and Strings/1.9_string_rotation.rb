# Assumeyou have a method isSubstringwhich checks if one word is a substring of another. Given two strings,
# sl and s2, write code to check if s2 is a rotation of sl using only one call to isSubstring (e.g.,"waterbottle" is a rotation of"erbottlewat").

def string_rotation?(s1, s2)
  s2_concatenated = "#{s2}#{s2}"
  substring?(s1, s2_concatenated) && s1.length == s2.length
end

def substring?(s1, s2)
  s2.include?(s1)
end

puts string_rotation?('waterbottle', 'erbottlewat')
puts string_rotation?('waterbottl', 'erbottlewat')
