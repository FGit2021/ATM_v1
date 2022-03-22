Algoritmo CAJEROATM
	Definir retiro,intentos,pass,user,entrada,opc,saldo,total Como Entero
	intentos <- 3
	Escribir "----Cajero ATM 1.0v ----"
	Escribir "Ingresar Datos"
	Repetir
		Escribir 'usuario'
		Leer user
		Escribir 'contraseña'
		Leer pass
		Si user=1234 Y pass=1234 Entonces
			Borrar Pantalla
			Escribir 'bienvenido'
			entrada <- 0
			retiro <- 0
			saldo <- 24000
			Repetir
				
				Escribir "Seleccione una opcion"
				Escribir '1-Saldo'
				Escribir '2-Ingreso dinero'
				Escribir '3-Retiro de dinero'
				Escribir '5-Salir'
				Leer opc
				Borrar Pantalla
				Segun opc  Hacer
					1:
						Escribir 'Su saldo es $' saldo
					2:
						Escribir 'Cantidad a ingresar '
						Leer entrada
						saldo <- entrada+saldo
						Escribir 'Realizo un ingreso de ',entrada,' su saldo es ',saldo
						Escribir 'Presione una tecla para continuar'
						Esperar Tecla
						Borrar Pantalla
					3:
						Escribir 'Cuanto desea retirar '
						Leer retiro
						Si saldo>=retiro y retiro<=saldo Entonces
							saldo <- saldo-retiro
							Escribir 'Retiro la cantida de ',retiro,' su saldo es ',saldo
						SiNo
							Escribir 'Monto incorrecto , no dispone esa cantidad su saldo es ' saldo
						FinSi
						Esperar Tecla
						Borrar Pantalla
					De Otro Modo:
						Escribir 'Escribir opcion incorrecta'
				FinSegun
			Hasta Que opc=5
		SiNo
			Borrar Pantalla
			Escribir 'Incorrecto tienes ',intentos,' intentos'
			intentos <- intentos-1
		FinSi
	Hasta Que intentos<0 O user=1234 Y pass=1234
FinAlgoritmo
