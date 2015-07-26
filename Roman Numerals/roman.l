%{
char input[] = "";
%}

%%

%%

int main(int argc, char *argv[])
{
	strcpy(input,argv[1]);
	printf("Value is : %d\n",yylex());
	return 0;
}
