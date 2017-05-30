#include <stdio.h>
#include <cmath>
#include <algorithm>
#include <math.h>

int main()
{
	int m,n,o,p,x,y,ans;
	scanf("%d", &m);
	scanf("%d", &n);
	scanf("%d", &o);
	scanf("%d", &p);
	if (std::abs(m) > std::abs(n)) x = m;
	else x = n;
	y = std::min(o, p);
	printf("(%d,%d)\n", x, y);
	printf("%d\n", ((int) pow(x, 2)) - (3 * y) + x);

	return 0;
}