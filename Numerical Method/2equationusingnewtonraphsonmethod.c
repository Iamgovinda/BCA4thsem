
#include<stdio.h>
#include<math.h>
float f(float x){
    return (pow(x,3) + 5*pow(x,2) -7);
}
float df(float x){
    return (3*pow(x,2) + 10*x );
}
int main(){
    float x0, x1, x2;
    int count = 0;
    printf("Enter the initial guess: ");
    scanf("%f", &x0);
    while(1){
        x1 = x0 - f(x0)/df(x0);
        count++;
        if(x0==x1){
            break;
        }
        x0 = x1;
    }
    printf("The root after %d iteration is %.3f",count, x0);
    return 0;
}
