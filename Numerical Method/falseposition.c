#include<stdio.h>
#include<math.h>
#include<stdlib.h>

float f(float x){
    return x*x*x - 2*x - 5;
}

int main()
{
    float x0,x1,x2;

    step1:
    printf("Enter Initial guesses...\n");
    printf("x0: ");
    scanf("%f",&x0);

    printf("x1: ");
    scanf("%f",&x1);
    
    float fx0,fx1,fx2;
    fx0 = f(x0);
    fx1 = f(x1);
    
    float error;
    error = 0.0001;

    if(fx0*fx1>0){
        printf("Invalid....");
        goto step1;
    }
    
    float temp;

    //printf("\n\n\n table.");
    printf("\nI\t\tx0\t\tfx0\t\tx1\t\tfx1\t\tx2\t\tf(x2)\n");
    int count=0;
    do{
        count++;
        x2=x1 - (x1-x0) * fx1 / ( fx1 - fx0 );
        //printf("\nI%d\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f",count,x0,fx0,x1,fx1,x2,fx2);
        printf("%d\t\t%f\t%f\t%f\t%f\t%f\t%f\n",count, x0,fx0, x1,fx1, x2, fx2);
        
        fx2=f(x2);
    
        if(fx0*fx2<0)
        {
            x1=x2;
            fx1=fx2;
        }
        else{
        x0=x2;
        fx0=fx2;
        }
        
    }while(fabs(fx2)>=0.00001);

    printf("\n\n Hence root is %f.",x2);
    return 0;

}