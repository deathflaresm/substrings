def substrings(string, dictionary)
  new_hash = {} 
  char = string.downcase.split("")
  for i in 0..char.length-1
    temp_substring = [] 
    for j in i..char.length-1
      temp_substring[j] = char[j]
      if new_hash[temp_substring.join] == 0
        new_hash[temp_substring.join] -= 1
      else
        new_hash[temp_substring.join] = 0
      end
    end
  end
  for i in 0..dictionary.length-1
    if new_hash[dictionary[i]] != nil
      new_hash[dictionary[i]] *= -1
      new_hash[dictionary[i]] += 1
    end
  end
  new_hash.delete_if{ |key, value| value <= 0 }
  puts new_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)