#include<stdio.h>
#include<math.h>


int main()
{
    int number_of_computation,i;
    float pi=0;

    printf("Enter the number of computation:" );
    scanf("%d",&number_of_computation);

    for(i=0;i<=number_of_computation;i++)
    {
        pi=pi+(float)(pow(-1,i))/(2*i+1);
        
    }
    printf("The value of pi using lebnitz formula, pi=%f\n",4*pi);
    return 0;
}