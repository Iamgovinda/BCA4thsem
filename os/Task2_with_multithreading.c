#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<pthread.h>


void *calculate(void *ptr);

pthread_mutex_t pi_mutex = PTHREAD_MUTEX_INITIALIZER;
float pi=0;
int slicing_factor;

int main()
{
    int number_of_computation, number_of_threads,i;
    pthread_t threads[100];

    printf("Enter the number of computation: ");
    scanf("%d",&number_of_computation);

    printf("Enter the number of threads: ");
    scanf("%d",&number_of_threads);

    slicing_factor = number/number_of_threads;

    for(i=0;i<number_of_threads;i++)
    {
        pthread_create(&threads[i],NULL, calculate, (void *)(size_t)i);
    }

    for(i=0;i<number_of_threads;i++)
    {
        pthread_join(threads[i],NULL);
    }

    printf("The value of the pi using lebnitz formula, pi=%f \n");

    return 0;
}

void *calculate(void *ptr)
{
    int *i,j,stop,start=0,k,exit_status = 1;
    i= (int *)ptr;
    k= (int)i;

    if(k==0)
    {
        stop= (k+1) * slicing_factor;
        for(j=start;j<=stop;j++)
        {
            pthread_mutex_lock(&pi_mutex);
            pi = pi + (float)(pow(-1,j))/(2*j+1);
            pthread_mutex_unlock(&pi_mutex);
        }
    }else{
        start = (slicing_factor * k) +1;
        stop = (k+1)*slicing_factor;
        for(j=start;j<=stop;j++)
        {
            pthread_mutex_lock(&pi_mutex);
            pi=pi+(float)(pow(-1,j))/(2*j+1);
            pthread_mutex_unlock(&pi_mutex);
        }
    }
    pthread_exit(&exit_status);
}