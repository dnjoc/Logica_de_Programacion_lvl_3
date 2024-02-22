//requerimiento 3
Funcion resultado=prom_prec_m(valor_m, promedio)
	resultado=valor_m/promedio
FinFuncion
//requerimiento 2
SubProceso leer_datos(n, mayor_3 Por Referencia, nombre_mayor Por Referencia, nombre_menor Por Referencia, precio_mayor Por Referencia, precio_menor Por Referencia, cont_mermelada Por Referencia, precio_acum Por Referencia)
	cont_mermelada=0
	mayor_3=0
	precio_acum=0
	precio_mayor=0
	precio_menor=1000
	
	Para i=1 Hasta n
		Mostrar "Como se llama la mermelada " i " y cual es su precio"
		Leer nombre
		Leer precio
		si precio>precio_mayor Entonces
			precio_mayor=precio
			nombre_mayor=nombre
		FinSi
		si precio>3 Entonces
			mayor_3=mayor_3+1
		FinSi
		si precio<precio_menor Entonces
			precio_menor=precio
			nombre_menor=nombre
		FinSi
		cont_mermelada=cont_mermelada+1
		precio_acum=precio_acum+precio
	FinPara
FinSubProceso

//requerimiento 
//SubProceso promediar_precio(precio_acum, cont_mermelada, promed_precio Por Referencia)
	//promed_precio=prom_prec_m(precio_acum, cont_mermelada)
//	Mostrar "El promedio de precio de las mermeladas es: " promed_precio
//FinSubProceso

//requerimieno 4
SubProceso mostrar_resultados(precio_mayor, nombre_mayor, precio_menor, nombre_menor, mayor_3) 
	Mostrar " "
	Mostrar "El precio mayor de mermelada es: " precio_mayor
	Mostrar "Nombre de la mermelada con mayor precio: " nombre_mayor
	Mostrar " "
	Mostrar "El precio menor de mermelada es: " precio_menor
	Mostrar "Nombre de la mermelada con menor precio: " nombre_menor
	Mostrar " "
	Mostrar "Las mermeladas con precio mayor a 3 son: " mayor_3	
FinSubProceso


//requerimiento 1
SubProceso mostrar_menu(opc_menu Por Referencia)
	Mostrar " "
	Mostrar "Menu Mermelado"
	Mostrar "1 - Ingresar datos"
	Mostrar "2 - Mostrar los cálculos estadísticos generales"
	Mostrar "3 - Mostrar promedio de precios"
	Mostrar "4 - Salir"
	Leer opc_menu
FinSubProceso

 //Requerimiento 5
Algoritmo Venta_Mermelada2
	Definir mayor_3, precio_acum, precio_mayor, precio_menor, cont_mermelada, promed_precio Como Real
	Definir nombre_mayor, nombre_menor Como Caracter
	Definir opc_menu Como Entero
	Repetir
		mostrar_menu(opc_menu)
		Mostrar " "
		Segun opc_menu Hacer
			1: leer_datos(5, mayor_3, nombre_mayor, nombre_menor, precio_mayor, precio_menor, cont_mermelada, precio_acum)
			2: mostrar_resultados(precio_mayor, nombre_mayor, precio_menor, nombre_menor, mayor_3)
			3: promed_precio=prom_prec_m(precio_acum, cont_mermelada)
				Mostrar "El promedio de precio de las mermeladas es: " promed_precio
			4: Mostrar "Eligió salir del programa!"
				Esperar 2 Segundos
				Limpiar Pantalla
				Mostrar "Hasta Luego!"
			De Otro Modo:
				Limpiar Pantalla
				Mostrar "Seleccione una opcion correcta"
		FinSegun
	Hasta Que opc_menu=4
FinAlgoritmo
