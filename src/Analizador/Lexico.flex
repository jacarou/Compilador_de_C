package Analizador;
import static Analizador.Tokens.*;
%%
%class Lexico
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \\t \\r]+
%{
    public String lexemas;
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Marcador break*/
( "break" ) {lexemas=yytext(); return Break;}

/* Tipo de dato String */
( string ) {lexemas=yytext(); return Cadena;}

/* Marcador de casos*/
( "case" ) {lexemas=yytext(); return Case;}

/* Comentarios */
( "//"(.)* | "/"(.)* ) {/*Ignore*/}

/* Comillas */
( "\"" | "\\\"" ) {lexemas=yytext(); return Comillas;}

/* Marcador de constante*/
( "const" ) {lexemas=yytext(); return Const;}

/* Marcador continue*/
( "continue" ) {lexemas=yytext(); return Continue;}

/* Corchete de apertura */
( "[" ) {lexemas=yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexemas=yytext(); return Corchete_c;}

/* Marcador por defecto*/
( "default" ) {lexemas=yytext(); return Default;}

/* Marcador define*/
( "define" ) {lexemas=yytext(); return Define;}

/* Marcador while*/
( "while" ) {lexemas=yytext(); return While;}

/* Operador Division*/
( "/" ) {lexemas=yytext(); return Division;}

/* Marcador Do*/
( "do" ) {lexemas=yytext(); return Do;}

/* Double */
(double) {lexemas=yytext(); return Double;}

/* Marcador Else*/
( "else" ) {lexemas=yytext(); return Else;}

/* Ciclo repetitivo for */
( "for" ) {lexemas=yytext(); return For;}

/* Condicional if */
( "if" ) {lexemas=yytext(); return If;}

/* Comparador Mayor igual*/
( ">=" ) {lexemas=yytext(); return MayorIgual;}

/* Comparador Menor igual*/
( "<=" ) {lexemas=yytext(); return MenorIgual;}

/* Operador Más igual*/
( "+=" ) {lexemas=yytext(); return MasIgual;}

/* Operador Menos igual*/
( "-=" ) {lexemas=yytext(); return MenosIgual;}

/* Operador Multiplica igual*/
( "*=" ) {lexemas=yytext(); return MultiplicacionIgual;}

/* Operador Division igual*/
( "/=" ) {lexemas=yytext(); return DivisionIgual;}

/* Operador Comparador igual*/
( "==" ) {lexemas=yytext(); return ComparadorIgual;}

/* Operador Diferente */
( "!=" ) {lexemas=yytext(); return Diferente;}

/* Operador Negador*/
( "!" ) {lexemas=yytext(); return Negador;}

/* Incremento */
( "++" ) {lexemas=yytext(); return Incremento;}

/* Decremento*/
( "--" ) {lexemas=yytext(); return Decremento;}

/* Operador Igual */
( "=" ) {lexemas=yytext(); return Igual;}

/* Doble mayor*/
( ">>" ) {lexemas=yytext(); return DobleMayor;}

/* Modulo igual*/
( "%=" ) {lexemas=yytext(); return ModuloIgual;}

/* Doble menor*/
( "<<" ) {lexemas=yytext(); return DobleMenor;}

/* Operador Mayor que */
( ">" ) {lexemas=yytext(); return MayorQue;}

/* Operador Menor que */
( "<" ) {lexemas=yytext(); return MenorQue;}

/* Signo dos puntos*/
( ":" ) {lexemas=yytext(); return DosPuntos;}

/* operador y logico*/
( "&&" ) {lexemas=yytext(); return Y_logico;}

/* operador bitand*/
( "&" ) {lexemas=yytext(); return BitAnd;}

/* operador o logico*/
( "||" ) {lexemas=yytext(); return O_logico;}

/* operador bitor*/
( "|" ) {lexemas=yytext(); return BitOr;}

/* Integer */
(int) {lexemas=yytext(); return Int;}

/* Long */
(long) {lexemas=yytext(); return Long;}

/* Short*/
(short) {lexemas=yytext(); return Short;}

/* Float*/
(float) {lexemas=yytext(); return Float;}

/* Byte*/
(byte) {lexemas=yytext(); return Byte;}

/* Char*/
(char) {lexemas=yytext(); return Char;}

/* Marcador include */
( "include" ) {lexemas=yytext(); return Include;}

/* Marcador namespace */
( "namespace" ) {lexemas=yytext(); return Namespace;}

/* Marcador std */
( "std" ) {lexemas=yytext(); return Std;}

/* Marcador iosteam */
( "iostream" ) {lexemas=yytext(); return Iostream;}

/* Marcador using */
( "using" ) {lexemas=yytext(); return Using;}

/* Marcador false*/
( "false" ) {lexemas=yytext(); return False;}

/* Marcador true*/
( "true" ) {lexemas=yytext(); return True;}

/* Salto de linea endl*/
( "endl" ) {lexemas=yytext(); return Endl;}

/* Salto de linea */
( "\n" ) {return Linea;}

/* Llave de apertura */
( "{" ) {lexemas=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexemas=yytext(); return Llave_c;}

/* Marcador de inicio de algoritmo */
( "main" ) {lexemas=yytext(); return Main;}

/* Marcador register*/
( "register" ) {lexemas=yytext(); return Register;}

/* Salida por consola*/
( "cout" ) {lexemas=yytext(); return Cout;}

/* Marcador Void*/
( "void" ) {lexemas=yytext(); return Void;}

/* Marcador Typedef*/
( "typedef" ) {lexemas=yytext(); return Typedef;}

/* Marcador switch*/
( "switch" ) {lexemas=yytext(); return Switch;}

/* Marcador unsigned*/
( "unsigned" ) {lexemas=yytext(); return Unsigned;}

/* Entrada por consola */
( "cin" ) {lexemas=yytext(); return Cin;}

/* Operador Multiplicación */
( "*" ) {lexemas=yytext(); return Multiplicacion;}

/* Operador Modulo*/
( "%" ) {lexemas=yytext(); return Modulo;}

/* Numeral # */
( "#" ) {lexemas=yytext(); return Numeral;}

/* Parentesis de apertura */
( "(" ) {lexemas=yytext(); return Parent_a;}

/* Parentesis de cierre */
( ")" ) {lexemas=yytext(); return Parent_c;}

/* P_coma */
( ";" ) {lexemas=yytext(); return P_coma;}

/* punto */
( "." ) {lexemas=yytext(); return Punto;}

/* coma */
( "," ) {lexemas=yytext(); return Coma;}

/* Operador Resta */
( "-" ) {lexemas=yytext(); return Resta;}

/* Return */
( "return" ) {lexemas=yytext(); return Return;}

/* Operador Suma */
( "+" ) {lexemas=yytext(); return Suma;}

/* Identificador */
{L}({L}|{D})* {lexemas=yytext(); return Identificador;}

/* Numero */
("-("{D}+")") | ("-("{D}+.{D}+")") | -({D})+ | {D}+ | {D}+.{D}+ | -{D}+.{D}+ {lexemas=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}
