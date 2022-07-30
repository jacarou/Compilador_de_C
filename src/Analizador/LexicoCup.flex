package Analizador;
import java_cup.runtime.Symbol;
%%
%class LexicoCup
%type java_cup.runtime.Symbol
%cup 
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \t \r \n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%
/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Palabra reservada break*/
( break ) {return new Symbol(sym.Break, yychar, yyline, yytext());}

/* Tipo de dato String */
( string ) {return new Symbol(sym._String, yychar, yyline, yytext());}

/* Printf */
( printf ) {return new Symbol(sym.Printf, yychar, yyline, yytext());}

/* Scanf */
( scanf ) {return new Symbol(sym.Scanf, yychar, yyline, yytext());}

/* Palabra reservada case*/
( case ) {return new Symbol(sym.Case, yychar, yyline, yytext());}

/* Comentarios */
( "//"(.)* | "/"(.)* ) {/*Ignore*/}

/* Comillas */
( "\"") {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

/* Comilla simple*/
("'") {return new Symbol(sym.Comilla_simple, yychar, yyline, yytext());}

/* Cadena - texto entre comillas*/
L?\"(\\.|[^\\\"])*\" {return new Symbol(sym.STRING_LITERAL, yychar, yyline, yytext());}

/* Palabra reservada const*/
( const ) {return new Symbol(sym.Const, yychar, yyline, yytext());}

/* Palabra reservada continue*/
( continue ) {return new Symbol(sym.Continue, yychar, yyline, yytext());}

/* Corchete de apertura */
( "[" ) {return new Symbol(sym.Corchete_a, yychar, yyline, yytext());}

/* Corchete de cierre */
( "]" ) {return new Symbol(sym.Corchete_c, yychar, yyline, yytext());}

/* Palabra reservada default*/
( default ) {return new Symbol(sym.Default, yychar, yyline, yytext());}

/* Palabra reservada define*/
( define ) {return new Symbol(sym.Define, yychar, yyline, yytext());}

/* Salto, tabulacion y espacio */
( "\\n" | "\\t" ) {/*Ignore*/}

/* Palabra reservada while*/
( while ) {return new Symbol(sym.While, yychar, yyline, yytext());}

/* Operador Division */
( "/" ) {return new Symbol(sym.Division, yychar, yyline, yytext());}

/* Palabra reservada Do */
( do ) {return new Symbol(sym.Do, yychar, yyline, yytext());}

/* Tipo de dato bool */
( bool ) {return new Symbol(sym.Bool, yychar, yyline, yytext());}

/* Tipo de dato double */
( double ) {return new Symbol(sym.Double, yychar, yyline, yytext());}

/* Palabra reservada Else */
( else ) {return new Symbol(sym.Else, yychar, yyline, yytext());}

/* Palabra reservada For */
( for ) {return new Symbol(sym.For, yychar, yyline, yytext());}

/* Palabra reservada If */
( if ) {return new Symbol(sym.If, yychar, yyline, yytext());}

/* Operador Mayor Igual */
( ">=" ) {return new Symbol(sym.MayorIgual, yychar, yyline, yytext());}

/* Operador Menor Igual */
( "<=" ) {return new Symbol(sym.MenorIgual, yychar, yyline, yytext());}

/* Operador Mas Igual */
( "+=" ) {return new Symbol(sym.MasIgual, yychar, yyline, yytext());}

/* Operador Menos Igual */
( "-=" ) {return new Symbol(sym.MenosIgual, yychar, yyline, yytext());}

/* Operador Multiplica Igual */
( "*=" ) {return new Symbol(sym.MultiplicacionIgual, yychar, yyline, yytext());}

/* Operador Division Igual */
( "/=" ) {return new Symbol(sym.DivisionIgual, yychar, yyline, yytext());}

/* Comparador Igual */
( "==" ) {return new Symbol(sym.ComparadorIgual, yychar, yyline, yytext());}

/* Operador Diferente*/
( "!=" ) {return new Symbol(sym.Diferente, yychar, yyline, yytext());}

/* Operador negador*/
( "!" ) {return new Symbol(sym.Negador, yychar, yyline, yytext());}

/* Operador Incremento */
( "++" ) {return new Symbol(sym.Incremento, yychar, yyline, yytext());}

/* Operador decremento */
( "--" ) {return new Symbol(sym.Decremento, yychar, yyline, yytext());}

/* Operador Igual */
( "=" ) {return new Symbol(sym.Igual, yychar, yyline, yytext());}

/* Relacional doble mayor*/
( ">>" ) {return new Symbol(sym.DobleMayor, yychar, yyline, yytext());}

/* Operador Modulo igual*/
( "%=" ) {return new Symbol(sym.ModuloIgual, yychar, yyline, yytext());}

/* Relacional doble menor*/
( "<<" ) {return new Symbol(sym.DobleMenor, yychar, yyline, yytext());}

/* Relacional Mayor que */
( ">" ) {return new Symbol(sym.MayorQue, yychar, yyline, yytext());}

/* Relacional Menor que */
( "<" ) {return new Symbol(sym.MenorQue, yychar, yyline, yytext());}

/* Signo dos puntos*/
( ":" ) {return new Symbol(sym.DosPuntos, yychar, yyline, yytext());}

/* operador y logico*/
( "&&" ) {return new Symbol(sym.Y_logico, yychar, yyline, yytext());}

/* operador bitand*/
( "&" ) {return new Symbol(sym.BitAnd, yychar, yyline, yytext());}

/* operador o logico*/
( "||" ) {return new Symbol(sym.O_logico, yychar, yyline, yytext());}

/* operador bitor*/
( "|" ) {return new Symbol(sym.BitOr, yychar, yyline, yytext());}

/* Palabra reservada Int */
( int ) {return new Symbol(sym.Int, yychar, yyline, yytext());}

/* Palabra reservada Long */
( long ) {return new Symbol(sym.Long, yychar, yyline, yytext());}

/* Palabra reservada Short*/
( short ) {return new Symbol(sym.Short, yychar, yyline, yytext());}

/* Palabra reservada Float*/
( float ) {return new Symbol(sym.Float, yychar, yyline, yytext());}

/* Palabra reservada Byte*/
( byte ) {return new Symbol(sym.Byte, yychar, yyline, yytext());}

/* Palabra reservada Char*/
( char ) {return new Symbol(sym.Char, yychar, yyline, yytext());}

/* Marcador include */
( "include" ) {return new Symbol(sym.Include, yychar, yyline, yytext());}

/* Marcador namespace */
( "namespace" ) {return new Symbol(sym.Namespace, yychar, yyline, yytext());}

/* Marcador Std */
( "std" ) {return new Symbol(sym.Std, yychar, yyline, yytext());}

/* Marcador iostream */
( "iostream" ) {return new Symbol(sym.Iostream, yychar, yyline, yytext());}

/* Marcador using*/
( "using" ) {return new Symbol(sym.Using, yychar, yyline, yytext());}

/* Marcador false */
( "false" ) {return new Symbol(sym.False, yychar, yyline, yytext());}

/* Marcador true */
( "true" ) {return new Symbol(sym.True, yychar, yyline, yytext());}

/* Marcador endl */
( "endl" ) {return new Symbol(sym.Endl, yychar, yyline, yytext());}

/* Llave de apertura */
( "{" ) {return new Symbol(sym.Llave_a, yychar, yyline, yytext());}

/* Llave de cierre */
( "}" ) {return new Symbol(sym.Llave_c, yychar, yyline, yytext());}

/* Marcador de inicio de algoritmo */
( "main" ) {return new Symbol(sym.Main, yychar, yyline, yytext());}

/* Marcador register*/
( "register" ) {return new Symbol(sym.Register, yychar, yyline, yytext());}

/* Salida por consola */
( "cout" ) {return new Symbol(sym.Cout, yychar, yyline, yytext());}

/* Marcador void*/
( "void" ) {return new Symbol(sym.Void, yychar, yyline, yytext());}

/* Marcador typedef*/
( "typedef" ) {return new Symbol(sym.Typedef, yychar, yyline, yytext());}

/* Marcador switch*/
( "switch" ) {return new Symbol(sym.Switch, yychar, yyline, yytext());}

/* Marcador unsigned*/
( "unsigned" ) {return new Symbol(sym.Unsigned, yychar, yyline, yytext());}

/* Entrada por consola*/
( "cin" ) {return new Symbol(sym.Cin, yychar, yyline, yytext());}

/* Operador Multiplicacion */
( "*" ) {return new Symbol(sym.Multiplicacion, yychar, yyline, yytext());}

/* Operador Modulo */
( "%" ) {return new Symbol(sym.Modulo, yychar, yyline, yytext());}

/* Numeral # */
( "#" ) {return new Symbol(sym.Numeral, yychar, yyline, yytext());}

/* Parentesis de apertura */
( "(" ) {return new Symbol(sym.Parent_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.Parent_c, yychar, yyline, yytext());}

/* Punto y coma */
( ";" ) {return new Symbol(sym.P_coma, yychar, yyline, yytext());}

/* Punto */
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}

/* Coma */
( "," ) {return new Symbol(sym.Coma, yychar, yyline, yytext());}

/* Operador Resta */
( "-" ) {return new Symbol(sym.Resta, yychar, yyline, yytext());}

/* return */
( "return" ) {return new Symbol(sym.Return, yychar, yyline, yytext());}

/* Operador Suma */
( "+" ) {return new Symbol(sym.Suma, yychar, yyline, yytext());}

/* CADENA 

{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

*/



/* Identificador */
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

/* Numero */
("-("{D}+")") | ("-("{D}+.{D}+")") | -({D})+ | {D}+ | {D}+.{D}+ | -{D}+.{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}