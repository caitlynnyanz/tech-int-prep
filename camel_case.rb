# There is a sequence of words in CamelCase as a string of letters, , having the following properties:

# It is a concatenation of one or more words consisting of English letters.
# All letters in the first word are lowercase.
# For each of the subsequent words, the first letter is uppercase and rest of the letters are lowercase.
# Given , determine the number of words in .

# Example

# There are  words in the string: 'one', 'Two', 'Three'.

# Function Description

# Complete the camelcase function in the editor below.

# camelcase has the following parameter(s):

# string s: the string to analyze
# Returns

# int: the number of words in 
# Input Format

# A single line containing string .

# Constraints

# Sample Input

# saveChangesInTheEditor
# Sample Output

# 5
# Explanation

# String  contains five words:

# save
# Changes
# In
# The
# Editor




### My Code

string = "thisIsCamelCase"

def camel_case(string)
  letters = string.split("")
  index = 0
  output = 1

  while index < letters.length 
    if letters[index] == letters[index].upcase
      output += 1
      index += 1
    else
      index += 1
    end

  end

  return output
end 

p camel_case(string)