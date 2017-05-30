#include <stdio.h>

const int MAX_PRIME = 100000;

bool primes[MAX_PRIME];

void erathostenes() {
	for (int i = 0; i < MAX_PRIME; ++i)
	{
		primes[i] = true;
	}
	primes[0] = false;
	primes[1] = false;
	for (int i = 2; i < MAX_PRIME; ++i)
	{
		if (i == 2 || primes[i]) {
			int counter = 2;
			int next = i * counter;
			while (next < MAX_PRIME) {
				primes[next] = false;
				counter++;
				next = i * counter;
			}
		}
	}
}

bool isPrime(int num) {
	return primes[num];
}

int main()
{
	erathostenes();
	int inp;
	scanf("%d", &inp);
	if (isPrime(inp) && isPrime(inp + 2)) {
		printf("PRIMO CASADO!\n");
	} else if (isPrime(inp)) {
		printf("PRIMO!\n");
	} else {
		printf("NAO PRIMO!\n");
	}
	return 0;
}