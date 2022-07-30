#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#define f(x) x*x*x-2*x-5
#define g(x) 3*x*x-2

int main()
{
    float x0,e=0.00001;
    int N,i=0;
    printf("Enter the Initial guess: ");
    scanf("%f",&x0);

    printf("%f",x0);

    float fx0,gx0,temp,fx1,x1;
    printf("\nStep\t\tx0\t\tf(x0)\t\tx1\t\tf(x1)\n");+
    do{
        i++;
        fx0=f(x0);
        gx0=g(x0);
        if(gx0==0)
        {
            printf("Mathematical Error");
            exit(0);
        }
        x1=x0-fx0/gx0;
        printf("%d\t\t%f\t%f\t%f\t%f\n",i,x0,fx0,x1,fx1);
        x0=x1;
        fx1=f(x1);
    
    }while(fabs(fx1)>e);
    printf("\nThe root is %f", x1);
}