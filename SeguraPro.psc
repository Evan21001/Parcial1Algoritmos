//Caso 1: si la suma asegurada es menor o igual a 100000 la aseguradora toma el 80% de dicha suma y distribuye 
//el 20% restante entre dos socios
//Caso 2:Si la suma asegurada es mayor a 100000 y menor a 120000, se distribuyen los primeros 100000 aplicando 
//el caso 1 y el resto se divede en partes iguales entre los dos socios 
//Caso 3:si la suma asegurada es mayor a 120000 se reparten los primeros 100000 aplicando el caso 1 los siguientes
//20000 aplicando el caso 2 y el resto se le asignan a un socio con cotrato especial
Algoritmo SeguraPro
	Definir suma_asegurada, porcentaje_aseguradora, porcentaje_socios, parte_socios, socio_especial Como Real
	
	Escribir "Ingrese la suma asegurada:"
	Leer suma_asegurada

	porcentaje_aseguradora <- 0
	porcentaje_socios <- 0
	socio_especial <- 0
	Si suma_asegurada <= 100000 Entonces
		// Caso 1: suma asegurada <= 100000
		porcentaje_aseguradora <- suma_asegurada * 0.80
		porcentaje_socios <- suma_asegurada * 0.20
		parte_socios <- porcentaje_socios / 2
		Escribir "La aseguradora recibe: ", porcentaje_aseguradora
		Escribir "El Socio 1 recibe: ", parte_socios
		Escribir "El Socio 2 recibe: ", parte_socios
		
	Sino
		Si suma_asegurada > 100000 Y suma_asegurada < 120000 Entonces
			// Caso 2: 100000 < suma asegurada < 120000
			porcentaje_aseguradora <- 100000 * 0.80
			porcentaje_socios <- 100000 * 0.20
			resto <- suma_asegurada - 100000
			parte_socios <- porcentaje_socios / 2 + resto / 2
			Escribir "La aseguradora recibe: ", porcentaje_aseguradora
			Escribir "El Socio 1 recibe: ", parte_socios
			Escribir "El Socio 2 recibe: ", parte_socios
			
		Sino
			// Caso 3: suma asegurada > 120000
			porcentaje_aseguradora <- 100000 * 0.80
			porcentaje_socios <- 100000 * 0.20
			porcentaje_extra <- 20000 * 0.20
			resto <- suma_asegurada - 120000
			socio_especial <- resto
			Escribir "La aseguradora recibe: ", porcentaje_aseguradora
			Escribir "El Socio 1 recibe: ", porcentaje_socios / 2
			Escribir "El Socio 2 recibe: ", porcentaje_socios / 2
			Escribir "El Socio especial recibe: ", socio_especial
		FinSi
	FinSi
FinAlgoritmo
