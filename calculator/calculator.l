/* recognize tokens for the calculator and print them out */
%%
"+"    { printf("PLUS "); }
"-"    { printf("MINUS "); }
"*"    { printf("TIMES "); }
"/"    { printf("DIVIDE "); }
"|"    { printf("ABS "); }
[0-9]+ { printf("NUMBER %s ", yytext); }
\n     { printf("\nNEWLINE\n"); }
[ \t]  { }
.      { printf("Mystery character %s\n", yytext); }
%%

int yywrap(){
    return 1;
}

void main(int argc, char **argv)
{
  yylex();
}