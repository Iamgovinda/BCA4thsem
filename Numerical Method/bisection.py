def f(x):
    return x**3 + x**2 +7

def bisectionmethod():
    x0 = int(input("Enter x0: "))
    x1 = int(input("Enter x1: "))

    x2 = (x0+x1)/2
    if f(x0)*f(x2)>0:
        bisectionmethod()
    print("\nx0\tf(x0)\tx1\tf(x1)\tx2\tf(x2)")
    while True:
        temp = f(x2)
        print(f"\n{x0}\t{f(x0)}\t{x1}\t{f(x1)}\t{x2}\t{f(x2)}")
        if(f(x0)*f(x2)<0): x1=x2
        if(f(x0)*f(x2)>0): x0=x1
        else: print("root=",x2)
        print(f(x0)*f(x2)<0)
        if abs(f(x2)-temp)<0.00001:
            print("root=",x2)
            break
bisectionmethod()
        

        
                    


    




