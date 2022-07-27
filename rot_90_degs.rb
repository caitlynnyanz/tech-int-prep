## Rotate 90 Degrees

# input = 3x3
# 1 2 3  
# 4 5 6  
# 7 8 9    

# output = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]

#write algorithm that rotates input by 90 degrees right

#in line, no extra variables

## Decompose

# 00 01 02    20(00) 10(01) 00(02)
# 10 11 12    21(10) 11(11) 01(12)
# 20 21 22    22(20) 12(21) 02(22)


# 11 = 00  array[1][1] = array[0][0]

# 00 = 02  array[0][0] = array[2][0]
# 02 = 22  array[2][0] = array[2][2]
# 22 = 20  array[2][2] = array[0][2]
# 20 = 11  array[0][2] = array[1][1]

# 11 = 01  array[1][1] = array[0][1]

# 01 = 12  array[0][1] = array[1][0]
# 12 = 21  array[1][0] = array[2][1]
# 21 = 10  array[2][1] = array[1][2]
# 10 = 11  array[1][2] = array[1][1]

# 11 = 5


## Code just for example 

# array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# def rotate_90_degrees(array)
#   output = array

#   array[1][1] = array[0][0]

#   array[0][0] = array[2][0]
#   array[2][0] = array[2][2]
#   array[2][2] = array[0][2]
#   array[0][2] = array[1][1]

#   array[1][1] = array[0][1]

#   array[0][1] = array[1][0]
#   array[1][0] = array[2][1]
#   array[2][1] = array[1][2]
#   array[1][2] = array[1][1]

#   array[1][1] = 5

#   return output 
# end


# p rotate_90_degrees(array)


## works for any cube array of numbers

array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def rotate_90_degrees(array)
  output = array

  output << array[1][1]

  array[1][1] = array[0][0]

  array[0][0] = array[2][0]
  array[2][0] = array[2][2]
  array[2][2] = array[0][2]
  array[0][2] = array[1][1]

  array[1][1] = array[0][1]

  array[0][1] = array[1][0]
  array[1][0] = array[2][1]
  array[2][1] = array[1][2]
  array[1][2] = array[1][1]

  array[1][1] = output[3]

  output.delete_at(3)

  return output 
end


p rotate_90_degrees(array)