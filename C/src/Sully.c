#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int i = 5;
	if (i == 0)
		return 0;
	char compile[1000];
	char execute[1000];
	char filename[100];
	if (FIRST)
		i++;
	sprintf(compile, "clang -Wall -Werror -Wextra -D FIRST=0 Sully_%d.c -o Sully_%d", i-1, i-1);
	sprintf(execute, "./Sully_%d", i-1);
	sprintf(filename, "Sully_%d.c", i-1);
	char *s = "#include <stdio.h>%c#include <stdlib.h>%c%cint main(void)%c{%c%cint i = %d;%c%cif (i == 0)%c%c%creturn 0;%c%cchar compile[1000];%c%cchar execute[1000];%c%cchar filename[100];%c%cif (FIRST)%c%c%ci++;%c%csprintf(compile, %cclang -Wall -Werror -Wextra -D FIRST=0 Sully_%c%c.c -o Sully_%c%c%c, i-1, i-1);%c%csprintf(execute, %c./Sully_%c%c%c, i-1);%c%csprintf(filename, %cSully_%c%c.c%c, i-1);%c%cchar *s = %c%s%c;%c%cFILE *fd = fopen(filename, %cw%c);%c%cif (fd == 0)%c%c{%c%c%creturn 1;%c%c}%c%cfprintf(fd, s,10,10,10,10,10,9,i-1,10,9,10,9,9,10,9,10,9,10,9,10,9,10,9,9,10,9,34,'%','d','%','d',34,10,9,34,'%','d',34,10,9,34,'%','d',34,10,9,34,s,34,10,9,34,34,10,9,10,9,10,9,9,10,9,10,9,10,9,10,9,10,9,10,9,10);%c%cfclose(fd);%c%csystem(compile);%c%csystem(execute);%c%creturn 0;%c}";
	FILE *fd = fopen(filename, "w");
	if (fd == 0)
	{
		return 1;
	}
	fprintf(fd, s,10,10,10,10,10,9,i-1,10,9,10,9,9,10,9,10,9,10,9,10,9,10,9,9,10,9,34,'%','d','%','d',34,10,9,34,'%','d',34,10,9,34,'%','d',34,10,9,34,s,34,10,9,34,34,10,9,10,9,10,9,9,10,9,10,9,10,9,10,9,10,9,10,9,10);
	fclose(fd);
	system(compile);
	system(execute);
	return 0;
}