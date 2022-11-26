def compareTriplets(a, b)
  index = 0
  a_score = 0
  b_score = 0
  scores = []
  
  while index < a.length 
      if a[index] > b[index]
          a_score +=1
          index +=1
      elsif
          b[index] > a[index]
          b_score +=1
          index +=1
      else 
          index +=1
      end
  end
  
  scores << a_score
  scores << b_score
  
  return scores
  

end

a = [4, 7, 3, 9]
b = [5, 3, 6, 9]

print compareTriplets(a, b)