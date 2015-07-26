%{
char word[60] = "";
%}

letter [a-zA-Z]

%%
{letter}+ {
		if(strlen(yytext) > strlen(word))
		{
			strcpy(word,yytext);	
		} 
	 }
%%

int main()
{
	yylex();
	printf("Longest Word: %s\n",word);
	return 0;
}
