#include <stdio.h>
#define PRINT(s) FILE *fd = fopen("Grace_kid.c", "w"); if (fd == 0) { return 1; } fprintf(fd, s,10,34,34,34,34,10,34,s,34,10,10,10,10,9,10); fclose(fd);
#define CODE int main(void){ char *s = "#include <stdio.h>%c#define PRINT(s) FILE *fd = fopen(%cGrace_kid.c%c, %cw%c); if (fd == 0) { return 1; } fprintf(fd, s,10,34,34,34,34,10,34,s,34,10,10,10,10,9,10); fclose(fd);%c#define CODE int main(void){ char *s = %c%s%c; PRINT(s); }%c#define FT(x) CODE%cFT(x)%c/*%c%cCommentaire%c*/"; PRINT(s); }
#define FT(x) CODE
FT(x)
/*
	Commentaire
*/