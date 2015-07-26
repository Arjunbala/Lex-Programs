%{
char *username = NULL;
%}


%%

username {printf("%s",username);}

%%

void set_login(char *login) 
{
	username = login;
}

int main(int argc, char *argv[])
{
	set_login(argv[1]);
	yylex();
	return 0;
}
