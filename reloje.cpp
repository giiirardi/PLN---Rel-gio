#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <locale.h>
#include <math.h>

#define MIN(a,b) (((a)<(b))?(a):(b))

/**
* Solicita para o usu�rio entrar os dados
*/
void inputData(float &h, float &min) {
	setlocale(LC_ALL,"");
	printf ("\t\t\t**********************************\n" );
	printf ("\t\t\t    Informe a hora desejada:" );
	scanf  ("%f", &h);
	printf ("\t\t\t**********************************\n" );
	printf ("\t\t\t Informe os minutos desejados: ");
	scanf  ("%f", &min);
	printf ("\t\t\t**********************************\n" );
	if ( h > 12);{
		h = ( h - 12);
	}
}

/**
* Mostra o resultado para o usu�rio
*/
void showResult(float ang) {
	printf ("\t\t\t R E S U L T A D O\n" );
	printf ("\t\t\t**********************************\n" );
	printf("\t\t\t\tSeu angulo �: %.2f\n", ang);
	printf ("\t\t\t**********************************\n" );
}

/**
* Programa solicitado pela Neomind no processo de contrata��o
*/
int main(){

	float hora   = 0;
	float minuto = 0;
	float hAngulo;
    float mAngulo;
    float angulo;

	inputData(hora,minuto);
	
    hAngulo = 0.5f * (hora * 60 + minuto);
    mAngulo = 6 * minuto;
    angulo  = abs(hAngulo - mAngulo);
    angulo = abs(MIN(angulo, 360 - angulo));
	
	showResult(angulo);

	return (0);
}
