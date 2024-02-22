SubProceso leer_entradas(nombre Por Referencia, tipo Por Referencia, cantidad Por Referencia)
	Mostrar "Ingresa tu nombre"
	leer nombre
	Mostrar "Los tipos de Franela que tenemos es: (A, B y C)"
	Mostrar "Ingresa el tipo de franela solicitado"
	leer tipo
	Mostrar "Ingresa la cantidad de franelas a comprar"
	Mostrar "!!!Tenemos descuento a partir de 6 unidades¡¡¡"
	leer cantidad
FinSubProceso
SubProceso calcular_monto_compra(precio, cantidad, monto_compra Por Referencia)
	monto_compra=precio*cantidad
FinSubProceso

SubProceso calcular_descuento(cantidad, monto_compra, porcent, descuento Por Referencia)
	calcular_porcentaje(cantidad, porcent)
	descuento=monto_compra*porcent
FinSubProceso

SubProceso calcular_tipo(tipo, validador Por Referencia, precio Por Referencia)
	si Mayusculas(tipo)="A" Entonces
		precio=25
		validador=Verdadero
	SiNo
		si Mayusculas(tipo)="B" Entonces
			precio=150
			validador=Verdadero
		SiNo
			si Mayusculas(tipo)="C" Entonces
				precio=170
				validador=Verdadero
			SiNo
				validador=Falso
				Mostrar "El tipo de Franela no esta disponible"
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso calcular_porcentaje(cantidad, porcent Por Referencia)
	si cantidad>24 Entonces
		porcent=0.20
	SiNo
		si cantidad>6 y cantidad<12 Entonces
			porcent=0.10
		SiNo
			porcent=0
		FinSi
	FinSi
FinSubProceso

SubProceso calcular_total_a_pagar(monto_compra, descuento, monto_total Por Referencia)
	monto_total=monto_compra-descuento
FinSubProceso

SubProceso imprimir_salidas(nombre, cantidad, precio, monto_compra, descuento, monto_total)
	Mostrar "******Factura Compra Franelas******"
	Mostrar "Cliente: " nombre
	Mostrar "Cantidad solicitada: " cantidad
	Mostrar "Precio por unidad: " precio
	Mostrar "Monto de la compra: " monto_compra
	Mostrar "Descuento obtenido: " descuento
	Mostrar "Monto total a pagar: " monto_total
FinSubProceso

Algoritmo Fabrica_Franelas
	Definir cantidad, precio Como Entero
	Definir nombre, tipo Como Caracter
	Definir monto_compra, descuento, monto_total, porcent Como Real
	Definir validador Como Logico
	
	Mostrar "***Bienvenido a nuestra fabrica de Franelas***"
	Mostrar "          ****Con ventas Online****"
	Mostrar " "
	leer_entradas(nombre, tipo, cantidad)
	calcular_tipo(tipo, validador, precio)
	si cantidad>0 y validador Entonces
		calcular_monto_compra(precio, cantidad, monto_compra)
		calcular_descuento(cantidad, monto_compra, porcent, descuento)
		calcular_total_a_pagar(monto_compra, descuento, monto_total)
		Mostrar "*************************************"
		Mostrar "Factura Cliente #1"
		imprimir_salidas(nombre, cantidad, precio, monto_compra, descuento, monto_total)
		Mostrar " "
		Mostrar "Gracias por su compra"
		Mostrar " "
		Esperar 4 Segundos
		Limpiar Pantalla
		leer_entradas(nombre2, tipo2, cantidad2)
		calcular_tipo(tipo2, validador2, precio2)
		si cantidad2>0 y validador2 Entonces
		calcular_monto_compra(precio2, cantidad2, monto_compra2)
		calcular_descuento(cantidad2, monto_compra2, porcent2, descuento2)
		calcular_total_a_pagar(monto_compra2, descuento2, monto_total2)
		Mostrar "*************************************"
		Mostrar "Factura Cliente #2"
		imprimir_salidas(nombre2, cantidad2, precio2, monto_compra2, descuento2, monto_total2)
		Mostrar "Gracias por su compra"
	SiNo
		si cantidad2<=0 Entonces
			Mostrar "Ingrese una cantidad positiva, para la compra" 
		SiNo
			Mostrar ""
		FinSi
		
		FinSi
	SiNo
		si cantidad<=0 Entonces
			Mostrar "Ingrese una cantidad positiva, para la compra"
		SiNo
			Mostrar ""
		FinSi
		
	FinSi
FinAlgoritmo
