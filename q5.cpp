#include <stdio.h>


bool jaVisto(int num, int index, int arr[]) 
{
	for (int i = index - 1; i >= 0; --i)
	{
		if (arr[i] == num) return true;
	}
	return false;
}

int main()
{
	int s;
	scanf("%d", &s);
	int arr[s];

	for (int i = 0; i < s; ++i)
	{
		int curr;
		scanf("%d", &curr);
		arr[i] = curr;
	}

	printf("%d", arr[0]);

	for (int i = 1; i < s; ++i)
	{
		if (!jaVisto(arr[i], i, arr)) {
			printf(" %d", arr[i]);
		}
	}
}