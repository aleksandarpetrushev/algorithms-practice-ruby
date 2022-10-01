# Implement a method to perform basic string compression using the counts of repeated characters.
# For example, the string aabcccccaaa would become a2blc5a3. If the "compressed" string would not become
# smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def compress_string(string)
  compressed_string = ''
  repeated_times = 1
  string[0...-1].chars.each_with_index do |char, i|
    if char == string[i + 1]
      repeated_times += 1
    else
      compressed_string = "#{compressed_string}#{char}#{repeated_times}"
      repeated_times = 1
    end
  end

  compressed_string = "#{compressed_string}#{string[-1]}#{repeated_times}"
  compressed_string
end

puts compress_string('aabcccccaaa')
