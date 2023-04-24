#include <stdio.h>

int sum_array(int *ptr, size_t len);

int main()
{
	int array[5] = {1, 0, 4, 5, 10};
	int result = sum_array(array, 5);
	printf("result: %d", result);
	return 0;
}