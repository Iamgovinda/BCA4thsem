#Greatest element from the list
#Min element from the list

number = [12,2,343,4,5,6,7,8,9,436]
#use max() function one way.
max = number[0]
for i in range(0,len(number)):
    if number[i]>max:   
        max=number[i]
print(max)

print(min(number))


