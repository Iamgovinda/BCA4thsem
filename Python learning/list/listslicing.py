#list slicing is the method of accessing the data from the list within the required index.
my_list = [1,2,3,4,"Hello","World","!"]


#accessing the data through slicing
#accessing data from 2nd to 5th index
print(my_list[2:6])

#accessing the data after required  index.
print(my_list[3:])

#accessing the data till the required index
print(my_list[:6])


#reversing the list using slicing
print(my_list[::-1])

#copying the list using slicing
print(my_list[::])
