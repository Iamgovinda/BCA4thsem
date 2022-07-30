#include<stdio.h>
#include<stdlib.h>
#include<math.h>

float f(float x)
{
    return x*x*x + 2*x -5;
}

float fdf(float x)
{
    return x*x + 2;
}

float sdf(float x)
{
    return 2*x;
}

int main()
{
    printf("Hello WOrld");
}