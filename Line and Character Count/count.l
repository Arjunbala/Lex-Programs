%{
int lineCount = 0;
int characterCount = 0;
int wordCount = 0;
%}

%%

\n {lineCount++; wordCount++;}
[" "] {wordCount++;}
. characterCount++;
%%

int main()
{
	yylex();
	printf("No of lines: %d\nNo of characters: %d\nNo of words: %d\n",lineCount,characterCount,wordCount);
	return 0;
}
