#different list methods

#1.sort method --> it is used to sort the numeric data

from itertools import count


nums=[3,5,2,1,35,6,0]
nums.sort()
print(nums)


#2. reverse method which is used to reverse the list

nums=[3,5,2,1,35,6,0]
nums.reverse()
print(nums)

#3. extend method is used to add another list to a particular list

veg=["potato","garlic"]
print(veg)

nonveg=["chicken","beef","mutton"]
print(nonveg)

veg.extend(nonveg)
print(veg)

#4. copy 
nums=[1,1,1,1,1,1,1]
copiedlist=nums.copy()
print(copiedlist)

#5 count

