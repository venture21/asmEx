#include <stdio.h>

int main(void)
{
    int n;
    int result=0;

    for(n=0;n<100;n++)
    {
	result = (n<<1)+n + 1;
    }

    return 0;
}

