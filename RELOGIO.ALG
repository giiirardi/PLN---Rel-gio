Algoritmo "Relogio"
// Requisitante  : Neomind
// Autor         : Matheus Rivelino Girardi
// Data atual    : 19/03/2018

Var
   hora   : inteiro
   minuto : inteiro
   angulo : real

   // BLOCO COM AS FUN��ES DE NEG�CIO

// funcao que calcula os graus entre os ponteiros
funcao relacaoEntrePonteiros(h, min:inteiro) : real
var
angulo : real

inicio

angulo <- ((11 * min) -(60 * h)) / 2

retorne angulo

fimfuncao

// BLOCO COM AS FUNCOES DE INTERFACE DE NEGOCIO

// funcao que solicita a hora para o usuario
funcao solicitarHora : inteiro
var
   h : inteiro
inicio
   repita
      escreva( "   Informe a hora: " )
      leia( h )
      se (h >= 0) e (h <= 23) entao
         interrompa
      senao
         escreval("Digite uma hora v�lida (entre 0 e 23).")
      fimse
   ate falso
   escreval("")
   // trata os casos em que o usu�rio digitar no formato 24h
   se h > 12 entao
      h <- h - 12
   fimse
   retorne h
fimfuncao

// funcao que solicita a hora para o usuario
funcao solicitarMinuto : inteiro
var
   min : inteiro
inicio
   repita
      escreva( "   Informe os minutos : " )
      leia( min )
      se (min >= 0) e (min < 60) entao
         interrompa
      senao
         escreval("Digite um valor v�lido para os minutos (entre 0 e 59).")
      fimse
   ate falso
   escreval("")
   retorne min
fimfuncao

Inicio
   hora   <- solicitarHora()
   minuto <- solicitarMinuto()
   angulo <- relacaoEntrePonteiros (hora, minuto)

   escreval( hora, ":",minuto )
   escreval ("O angulo entre os ponteiros �: " , angulo , "graus ")

Fimalgoritmo