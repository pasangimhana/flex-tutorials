%{
#include <stdio.h>    
%}


%%
"hello" { printf("Hello World!");}
"bye"   { printf("Bye (wave)!");}
. {printf("%s", yytext);}
%%

int yywrap(){
    return 1;
}

void main(int argc, char **argv)
{
  yylex();
}