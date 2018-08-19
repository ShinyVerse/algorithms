def recursive_letter_remover(arr, ascii, counter)
  total = arr.join("").scan(ascii.chr).count
  if total < counter
    arr.each.with_index do |letter, index|
      if letter.ord == ascii
        arr[index] = "deleted"
        counter -= 1
      end
    end
      ascii += 1
      recursive_letter_remover(arr, ascii, counter)
    else
      arr.each.with_index do |letter, index|
        if counter > 0
          if letter.ord == ascii
            arr[index] = "deleted"
            counter -= 1
            if counter == 0
              arr.delete_if { |item| item == "deleted" }
              return arr.join("")
            end
          end
        else
          arr.delete_if { |item| item == "deleted" }
          return arr.join("")
        end
      end
    end
  end

puts recursive_letter_remover("abracadabra".split(""), 97, 8)
