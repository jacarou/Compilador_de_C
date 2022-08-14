//Programa para probar compilador C
//	Autores:
// 		Jhony Caro  20191020055
//		Bryan Muñoz 20162020408

#include <stdlib.h>
#include <stdio.h>

int main(){
    int x = 10, y = 5;
    printf("Ingrese un numero por favor : ");
    scanf("%d", &x);
	printf("Ingrese otro numero por favor: ");
    scanf("%d", &y);
    printf("\nSENTENCIA IF-ELSE : \n");
    if(x > y){
    	printf("Numero 1 (%d) es mayor que Numero 2 (%d) \n\n",x,y);
    }else{
	printf("Numero 2 (%d) es mayor que Numero 1 (%d) \n\n",y,x);
    }
    system("pause");	
    system("cls");
    printf("\nIngrese otro numero para probar el \"FOR\" por favor: ");
    scanf("%d", &x);
    int num = 1;
   printf("\nSENTENCIA FOR : \n"); 
   for(int i = x; i< x+10;i++){
    	printf("\n  Iteracion %d, numero: %d ",num,i);
	++num;
    }	
    printf("\n"); 
    system("pause");
    return 0;
}