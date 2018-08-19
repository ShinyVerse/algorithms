def solve (str, k)
  current_letter = 97
  index = 0
  letters = str.split("")
  counter = k

  while counter > 0 && !letters.all? { |letter| letter == 'deleted'}
    if letters[index] == current_letter.chr
      letters[index] = "deleted"
      counter -= 1
    end
    index += 1
    if counter > 0 && index > letters.length - 1
      index = 0
      current_letter += 1
    end
  end
  letters.delete_if { |letter| letter == 'deleted' }.join("")
end

puts  solve('abracadabra', 8)

# Someone's solution to learn from.
# def solve (str ,k)
#   counter = 0
#   ("a".."z").each do |letter|
#     while counter<k && str.include?(letter)
#       str.sub!(letter,"")
#       counter+=1
#     end
#   end
#   str
# end
