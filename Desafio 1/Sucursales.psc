SubProceso ventas_totales(sucursal1 Por Referencia,sucursal2 Por Referencia,sucursal3 Por Referencia,sucursal4 Por Referencia)
	Mostrar "Ingrese el total de ventas de cada sucursal"
	leer sucursal1,sucursal2,sucursal3,sucursal4
FinSubProceso
SubProceso promedio(porcentaje Por Referencia, promedio_suc Por Referencia, sucursal1,sucursal2,sucursal3,sucursal4)
	promedio_suc=(sucursal1+sucursal2+sucursal3+sucursal4)/4
	porcentaje=0.30
FinSubProceso
SubProceso ganancias(porcent Por Referencia, porcentaje, promedio_suc)
	porcent=promedio_suc*porcentaje
FinSubProceso
SubProceso mostrar_final(promedio_suc, porcent)
	Mostrar " "
	Mostrar "El promedio de las 4 Sucursales es: " promedio_suc
	Mostrar " "
	Mostrar "El procentaje de Ganancia es: " porcent
	Mostrar " "
FinSubProceso
Algoritmo Sucursales
	Definir sucursal1,sucursal2,sucursal3,sucursal4 Como Entero
	Definir promedio_suc,porcent,porcentaje Como Real
	Mostrar ""
	Mostrar "Informacion de Ventas del Mes en Sucursales Farmapatodo"
	Mostrar " "
	ventas_totales(sucursal1,sucursal2,sucursal3,sucursal4)
	promedio(porcentaje,promedio_suc,sucursal1,sucursal2,sucursal3,sucursal4)
	ganancias(porcent, porcentaje, promedio_suc)
	mostrar_final(promedio_suc, porcent)
FinAlgoritmo
