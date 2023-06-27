/* just like Unix wc */
%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[a-zA-Z]+  { words++; chars += strlen(yytext); }
\n         { chars++; lines++; }
.          { chars++; }

%%


void main(int argc, char **argv)
{
  yylex();
  printf("Lines : %d\nWords : %d\nCharacters: %d\n", lines, words, chars);
}


int yywrap()
{
        return 1;
}