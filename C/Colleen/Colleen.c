#include <stdio.h>
/*
	Commentaire en dehors des fonctions
*/
void ft_function(char *s){ printf(s,10,10,9,10,10,10,10,10,10,10,9,10,10,9,34,s,34,10,9,10,9,10); }

int main(void)
{
/*
	Commentaire dans la fonction main()
*/
	char *s = "#include <stdio.h>%c/*%c%cCommentaire en dehors des fonctions%c*/%cvoid ft_function(char *s){ printf(s,10,10,9,10,10,10,10,10,10,10,9,10,10,9,34,s,34,10,9,10,9,10); }%c%cint main(void)%c{%c/*%c%cCommentaire dans la fonction main()%c*/%c%cchar *s = %c%s%c;%c%cft_function(s);%c%creturn 0;%c}";
	ft_function(s);
	return 0;
}