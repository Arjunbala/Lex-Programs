%{
int count = 0;
char *word = NULL;
%}

%%
word {count++;}
[.|\n] {}
%%

int main(int argc, char *argv[])
{
	word = argv[1];
	yylex();
	printf("No of occurences: %d\n",count);
	return 0;
}
