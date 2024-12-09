Funcion q = menu
	
	Escribir " "
	Escribir "============================="
	Escribir "==N O T A S   F I N A L E S=="
	Escribir "============================="
	Escribir " "
	Escribir " 1: Registre notas y estudiantes. "
	Escribir " 2: Registre inasistencias de cada estudiante. "
	Escribir " 3: Mostrar listado de estudiantes. "
	Escribir " 4: Calcular nota final. "
	Escribir Sin Saltar " ¿Que deseas hacer? "
	Leer q
	

FinFuncion


Funcion x = notEst(bd, cantEst, cod, est , not1, not2, not3) 
	
	bd[cantEst, 1] = cod
	bd[cantEst, 2] = est
	bd[cantEst, 3] = not1
	bd[cantEst, 4] = not2
	bd[cantEst, 5] = not3
	x = cantEst + 1 
	
FinFuncion

Funcion f = falla(fa, inas, cod, fall) 
	
	fa[inas, 1] = cod
	fa[inas, 2] = fall
	f = inas + 1
	
FinFuncion

Funcion l = listado(lis, canEst, cod, nom)
	
	lis[canEst,1] = cod
	lis[canEst,2] = nom
	
	
	Mostrar listado(lis, canEst, cod, nom)

FinFuncion




Algoritmo Notas_finales
	
	terminar=Falso
	cantEst = 1
	inas = 1 
	lis = 1
	
	Dimensionar fa[inas, 2]
	Dimensionar  bd[cantEst, 5]
	
	Repetir
		m = menu
		Segun m Hacer
			
			1:
				Escribir Sin Saltar" Digite codigo para registrar al estudiante " 
				Leer codigo
				Escribir Sin Saltar " Digite nombre del estudiante "
				Leer  nombre 
				Escribir Sin Saltar " Digite primera nota "
				leer not1
				Escribir Sin Saltar " Digite segunda nota "
				leer not2
				Escribir Sin Saltar " Digite tercera nota "
				leer not3
				cantEst = notEst(bd,cantEst,cod, est , not1, not2, not3)
				Redimensionar bd[cantEst, 5]
				
			2:
				Escribir " Digite codigo del estudiante "
				Leer codigo
				Escribir " digite fallas del estudiante " 
				Leer fallas
				inas  = falla(fa, inas, cod, fall)
				Redimensionar fa[inas, 2]
				
			3:
				Mostrar listado(lis, canEst, cod, nom)
				
		FinSegun
		
	Hasta Que terminar 
	
FinAlgoritmo
