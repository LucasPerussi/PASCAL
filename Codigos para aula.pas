Program ex21 ;
//Gustavo H Silva
//Lucas Perussi
//Wellington H Kania

var  n1, n2, n3:Integer;
aux, aux2, aux3, numero:integer;
Begin
	 Writeln ('Digite um n�mero inteiro de tr�s digitos: ');
	 read (numero);
 	 while (numero < 100) or (numero > 999) do
	 begin
		clrscr;
		Writeln ('N�mero inv�lido!!');
		Writeln ('Digite um n�mero inteiro de tr�s digitos: ');
		 read (numero);
	 end;
	 aux := (numero mod 10);
	 n1 := aux;
	 aux := numero div 10;
	 
	 aux2 := (aux mod 10);
	 n2 := aux2;
	 aux2 := (aux div 10);
	 
	 n3:= (aux2 mod 10);
	  
	 writeln('O inverso do valor informado �: ',n1, n2, n3);  
End.


Program ex22 ;
//Gustavo H Silva
//Lucas Perussi
//Wellington H Kania

var  dia, mes, ano:Integer;

Begin
	Writeln ('Informe uma dia: ');
	read(dia);
	while (dia <1) or (dia > 31) do
	begin
		clrscr;
		Writeln ('data Inv�lida! ');
		Writeln ('Informe uma dia: ');
		read(dia);
	end;
  	Writeln ('Informe um m�s : ');
  	read(mes);
            Writeln ('Informe um ano : ');
            read(ano);
  	if (mes > 12) then Writeln ('Data Inv�lida!');
  	if (ano < 1900) then  Writeln ('Data Inv�lida!');
  	if (mes =4) or (mes =6) or (mes =9) or (mes =11) and (dia > 30) then
  	begin
 		Writeln ('Data Inv�lida!');
  	end;
  	if (mes =1) or (mes =3) or (mes =5) or (mes =7) or (mes =8)or (mes =10)or (mes =12) and (dia > 31) then
  	begin
   		Writeln ('Data Inv�lida!');
  	end;
  	if ((ano mod 4) = 0) then   //bissexto
  	begin
  		if  (mes =2) and (dia > 29) then  Writeln ('Data Inv�lida!');
  	end;
  	if ((ano mod 4) <> 0) then   //n�o bissexto
  	begin
  		if  (mes =2) and (dia > 28) then  Writeln ('Data Inv�lida!');
  	end
  	else
	begin
		Writeln ('A data ', dia, '/', mes, '/', ano, ' est� correta!');
	end;
End.



Program ex24 ;
//Gustavo H Silva
//Lucas Perussi
//Wellington H Kania

var  x, y, aux, i, valor:Integer;
begin
	Writeln ('Informe um valor inteiro para X: ');
	read (x);
	Writeln ('Informe um valor inteiro para Y: ');
	read (y);
		
	aux := x;
	for i := 1 to (y-1) do
	begin
		aux := aux * x;	
	end;
	 writeln('=============================================== ');
	 writeln;
	 writeln(x, ' elevado na ', y, ' tem o resultado de : ', aux);
	readln;
End.


Program ex29 ;
//Gustavo H Silva
//Lucas Perussi
//Wellington H Kania

var entrada, contador:integer;

Begin

	entrada := -1;
	//while(entrada <> 0) do
			repeat
			begin
				contador := 1;
				write('Digite seu numero para calcular, ou zero para sair: ');
				readln(entrada);
				if (entrada > 0) then
				begin
					writeln();
					writeln('O numero ',entrada, ' pode ser divisivel por:');
					while(contador <= entrada) do
						begin
							if(entrada mod contador = 0) then
								writeln(contador);
						  	contador := contador + 1;
						end;
					writeln();
				end;	
			end;
			until (entrada = 0);
End.