#include <stdio.h>

int main()
{
	int pos1,pos2,pos3,pos4;
	char word1[50], word2[50], word3[50], word4[50];
	char ans[4];
	
	scanf("%d", &pos1);
	scanf("%d", &pos2);
	scanf("%d", &pos3);
	scanf("%d", &pos4);
	scanf("%s", &word1);
	scanf("%s", &word2);
	scanf("%s", &word3);
	scanf("%s", &word4);

	ans[0] = word1[pos1];
	ans[1] = word2[pos2];
	ans[2] = word3[pos3];
	ans[3] = word4[pos4];
	printf("%s\n", ans);
	return 0;
}