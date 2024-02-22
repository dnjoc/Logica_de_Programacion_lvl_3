SubProceso procesar_datos(cant_chef, platos, acum_precio_platos Por Referencia cont_masculino Por Referencia, cont_femenino Por Referencia, cont_precio_menor Por Referencia)
	Definir nombre, genero Como Caracter
	Definir precio, promedio_platos, acum_precio_chef Como Real
	acum_precio_platos=0
	cont_femenino=0
	cont_masculino=0
	cont_precio_menor=0
	//ciclo externo para solicitar datos
	Para i=1 Hasta cant_chef Hacer
		Mostrar " "
		Mostrar "Como se llama el Chef Nro " i
		Leer nombre
		Mostrar "Ingrese el genero M/F"
		Leer genero
		acum_precio_chef=0
		//ciclo interno para leer los precios y sumar
		Para j=1 Hasta platos Hacer
			Mostrar "Precio del plato Nro " j
			Leer precio
			acum_precio_platos=acum_precio_platos+precio
			acum_precio_chef=acum_precio_chef+precio
			si	precio<5 Entonces
				cont_precio_menor=cont_precio_menor+1
			FinSi
		FinPara
		//condicional para contar los chef masculinos y femeninos
		si Mayusculas(genero)="M" Entonces
			cont_masculino=cont_masculino+1
			Mostrar " "
			Mostrar "El Chef " nombre
		SiNo
			si Mayusculas(genero)="F" Entonces
				cont_femenino=cont_femenino+1
				Mostrar " "
				Mostrar "La Chef " nombre
			FinSi
		FinSi
		promedio_platos=calcular_prom(acum_precio_chef,platos)
		Mostrar "El promedio de precio de sus " platos " platos es: " promedio_platos " Bs."
		Mostrar " "
		
	FinPara
	
FinSubProceso

funcion promedio=calcular_prom(acumulador,contador)
	promedio=acumulador/contador
FinFuncion

funcion porcentaje=calcular_porcent(contador_especifico,contador_general)
	porcentaje=contador_especifico/contador_general*100
FinFuncion
//calculo total de platos procesados
SubProceso calcular_plat(cant_chef, platos, cant_total_platos Por Referencia)
	cant_total_platos=cant_chef*platos
FinSubProceso
//calculos de promedio y porcentaje
SubProceso calcular_promedio_y_porcentaje_global(acum_precio_platos, cant_total_platos, cont_precio_menor, precio_promedio_global Por Referencia, porcentaje__precio_menor Por Referencia)
	precio_promedio_global=calcular_prom(acum_precio_platos,cant_total_platos)
	porcentaje__precio_menor=calcular_porcent(cont_precio_menor, cant_total_platos)
FinSubProceso

SubProceso mostrar_salidas(cant_total_platos, precio_promedio_global, porcentaje__precio_menor, cont_masculino, cont_femenino)
	Mostrar " "
	Mostrar "La cantidad total de platos del menu es: " cant_total_platos
	Mostrar "El promedio de precio de los platos del menu es: " precio_promedio_global " Bs"
	Mostrar "El porcentaje de platos con precio menor a 5 Bs es: " porcentaje__precio_menor "%"
	Mostrar "La cantidad de Chef de genero masculino es: " cont_masculino
	Mostrar "La cantidad de Chef de genero femenino es: " cont_femenino	
	Mostrar " "
FinSubProceso

Algoritmo Restaurante
	Definir cant_chef, platos, cont_femenino, cont_masculino, cont_precio_menor, opc Como Entero
	Definir acum_precio_platos, cant_total_platos, precio_promedio_global, porcentaje__precio_menor Como Real
	cant_chef=Aleatorio(2,7)
	platos=3

	Repetir
		Mostrar " "
		mostrar "1) Ingrese los datos de los chef "
		mostrar "2) Mostrar resultados"
		mostrar "3) Salir"
		mostrar "Seleccione una opción "
		leer opc
		
		Segun opc	
			1:	procesar_datos(cant_chef, platos, acum_precio_platos, cont_masculino, cont_femenino, cont_precio_menor)
			2: 	calcular_plat(cant_chef, platos, cant_total_platos)
				calcular_promedio_y_porcentaje_global(acum_precio_platos, cant_total_platos, cont_precio_menor, precio_promedio_global, porcentaje__precio_menor)
				mostrar_salidas(cant_total_platos, precio_promedio_global, porcentaje__precio_menor, cont_masculino, cont_femenino)
			3: mostrar "Hasta luego"	
			De Otro Modo:
				Mostrar "Seleccione una opcion valida"
		FinSegun
	Hasta Que opc=3
	
FinAlgoritmo
