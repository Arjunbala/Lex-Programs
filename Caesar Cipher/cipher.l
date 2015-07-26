%{
#include<stdlib.h>
int key = 0;
%}

%%
[a-zA-Z] {
		char c = yytext[0];
		int isCapital = 0;
	  	if(c >= 'A' && c<= 'Z')
	  	{
			isCapital = 1;
	  	}
		int pos;
		if(isCapital)
		{
			pos = c-65;
		}
		else
		{
			pos = c-97;
		}
		pos = (pos+key)%26;
		char replacement = isCapital?(65+pos):(97+pos);
		printf("%c",replacement);
	 }
%%

int main(int argc, char*argv[])
{
	key = atoi(argv[1]);
	yylex();
	return 0;
}
