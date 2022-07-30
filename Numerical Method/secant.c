#include<stdio.h>
#include<math.h>
#include<stdlib.h>

float f(float x){
    return x*x*x - 2*x - 5;
}

int main()
{
    float x0,x1,x2,e,fx0,fx1,fx2=0;

    
    printf("\nEnter the initial guesses\n");
    printf("x0= ");
    scanf("%f",&x0);
    printf("x1= ");
    scanf("%f",&x1);

    int count=0,temp;
    printf("\nI\t\tx0\t\tfx0\t\tx1\t\tfx1\t\tx2\t\tfx2\n");
    do{
        fx0=f(x0);
        fx1=f(x1);

        if(fx0==fx1)
        {
            //printf("\nMathematical Error...Enter another guesses...");
            exit(0);
        }
        count++;
        x2 = x1 - (x1-x0) * fx1 / ( fx1 - fx0 );
        //temp = fx2-f(x2);
        //printf("%f-%f==%f\n",fx2,f(x2),fx2-f(x2));
        fx2=f(x2);
        printf("%d\t\t%f\t%f\t%f\t%f\t%f\t%f\n",count, x0,fx0, x1,fx1, x2, fx2);

       
        x0=x1;
        fx0=fx1;
        x1=x2;
        fx1=fx2;
    }while(fabs(fx2)>0.00001);

    printf("\nThe root is %f",x2);
}