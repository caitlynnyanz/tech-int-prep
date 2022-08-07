
# Input: aaabccddd
# Output: abd
# [aa]abccddd => abccddd
# [ab]ccddd => abccddd
# a[bc]cddd => abccddd
# ab[cc]ddd => abddd
# ab[dd]d = > abd
# Input: baab
# Output: ?
# [ba]ab => baab
# b[aa]b => bb
# [bb] => "Empty String"
# I'll need a loop, at least one index, probably want to split string into array...
# 12:47
# Decompose -
# print off s
# split s into an array -> print off array!
# loop through array and print off each letter
# print off two letters next to each other
# next, look at making an if conditional
# string = "aaccbbdee"

def super_reduced_str(string)
  letters = string.split("")
  index = 0


  while index < letters.length
    letter1 = letters[index]
    letter2 = letters[index + 1]
    if letter1 == letter2
      letters.delete_at(index)
      letters.delete_at(index)
      index = 0
   else
      index +=1
   end
  end
  
  if letters.length == 0
    return "Empty String"
  else
    return letters.join
  end
end





p super_reduced_str(string)