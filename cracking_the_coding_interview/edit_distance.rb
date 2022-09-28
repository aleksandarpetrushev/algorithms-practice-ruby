def edit_distance(s1, s2, memo = Hash.new({}))
  return 0 if s1 == s2
  return s1.length if s2.empty?
  return s2.length if s1.empty?
  return memo[s1.length][s2.length] unless memo[s1.length][s2.length].nil?

  value = edit_distance(s1[1..], s2[1..])
  value += 1 if s1[0] != s2[0]

  memo[s1.length][s2.length] =
    [value,
     1 + edit_distance(s1, s2[1..]),
     1 + edit_distance(s1[1..], s2)].min
end

puts edit_distance('computer', 'comp')
puts edit_distance('computer', 'campiter')
puts edit_distance('computer', 'computerphile')
puts edit_distance('computer', 'coltuper')
