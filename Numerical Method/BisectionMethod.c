#include<stdio.h>
#include<math.h>
#include<stdlib.h>

float f(float x){
    return x*x*x - 2*x - 5;
}
int main()
{
    float x1,x2,x3;
    step1:
    printf("Enter Initial guesses...\n");
    printf("x1: ");
    scanf("%f",&x1);

    printf("x2: ");
    scanf("%f",&x2);

    float fx1,fx2,fx3;
    fx1 = f(x1);
    fx2 = f(x2);
    
    float error;
    error = 0.0001;

    if(fx1*fx2>0){
        printf("Invalid....");
        goto step1;
    }
    
    float temp;

    //printf("\n\n\n table.");
    printf("\nI\t\tx1\t\tfx1\t\tx2\t\tfx2\t\tx3\t\tf(x3)\n");
    int count=0;
    do{
        count++;
        x3=(x1+x2)/2;
        temp = fx3-f(x3);
        //printf("\nI%d\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f",count,x1,fx1,x2,fx2,x3,fx3);
        printf("%d\t\t%f\t%f\t%f\t%f\t%f\t%f\n",count, x1,fx1, x2,fx2, x3, fx3);
        
        fx3=f(x3);
    
        if(fx1*fx3<0)
        {
            x2=x3;
            fx2=fx3;
        }
        else{
            x1=x3;
            fx1=fx3;
        }
        
    }while(fabs(temp)>error);

    printf("\n\n Hence root is %f.",x3);
    return 0;
}