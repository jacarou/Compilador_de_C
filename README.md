# Compilador de C - C++
Este es un compilador para código C hecho en java con JFLEX para análisis lexico, CUP para análisis sintatactico y con la ayuda de la herramienta MinGw el análisis semantico.

# Pre-requisitos
Esta proyecto se construyo en NetBeans, por lo que se recomienda el uso de NetBeans. En este repositorio se encuentran las librerias necesarias en la carpeta `lib` (3 en total). Se debe hacer la importación de las librerias al proyecto.

# Al correr
Posterior a implementar las librerias necesarias, cada vez que se corra el programa se sobreescribiran los archivos **Lexico.java**, **LexicoCup.java**, **Sintaxis.java** y **sym.java** *Necesarios al momento de compilar código *.

# Estado del proyecto
Este proyecto fue realizado en la clase de Ciencias de la Computación III en la Universidad Distrital Francisco Jose de Caldas, Bogotá, Colombia, en el primer semestre del año 2022.
Este compilador permite realizar operaciones aritmeticas, lectura y escritura por consola `CIN COUT PRINTF SCANF` y ejeciones de sentencias `IF WHILE FOR IF-ELSE DO-WHILE`.

# Prueba
Se puede implementar el siguiente código C para su verificación.
```C
int main(){
    int x;
    printf("Ingrese un numero: ");
    scanf(x);
    x = x * 2;
    printf("El doble de su numero es: %d",x);
    return 0;
}
```
