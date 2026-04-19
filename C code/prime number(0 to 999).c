#include<reg51.h>

void delay(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i<ms; i++)
        for(j = 0; j<=1383; j++);  // 11.0592 MHz
}

bit isPrime(int n)
{
    int i;
    if(n < 2) return 0;
    if(n == 2) return 1;
    if(n % 2 == 0) return 0;
    for(i = 3; i*i <= n; i += 2)
    {
        if(n % i == 0) return 0;
    }
    return 1;
}

void main(void)
{
    char number[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
    int hundreds, tens, ones, count;

    P1 = 0x00;
    P2 = 0x00;
    P3 = 0x00;

    while(1)
    {
        for(count = 0; count <= 999; count++)
        {
            if(isPrime(count))  // ???? prime ??? ??????
            {
                hundreds = count / 100;
                tens     = (count % 100) / 10;
                ones     = count % 10;

                P1 = number[hundreds];
                P2 = number[tens];
                P3 = number[ones];

                delay(50);
            }
        }
    }
}