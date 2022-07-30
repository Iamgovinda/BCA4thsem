import math
def findlog(x):
    if x > 0:
        log = math.log(x)
    elif x < 0:
        log = math.log(x*-1)*-1
    elif x == 0:
        log = 0
    return log

x=[-2,-1,0,1,2,3,4]
X=[]
for i in x:
    X.append(findlog(i))

print(X)