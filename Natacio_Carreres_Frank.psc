Algoritmo Natacio_Carreres_Frank
	
	//Nom : Frank Carreres Catal�
	
	Escribir "Quants jutges hi han?"
	Leer qJutges
	
	acumTotalMitja = 0
	
	Repetir
		
		Escribir "Disme el nom del pa�s: "
		Leer nomPais
		
		totalPaisos = totalPaisos + 1
		
		puntuacioFinal = 0
		
		
		Para i <- 1 Hasta qJutges Con Paso 1 Hacer
			
			Escribir "Disme la teua puntuacio jutge " i ": "
			Leer puntuacioJutge
			
			Mientras puntuacioJutge > 10 o puntuacioJutge < 0 
				
				Escribir "Aquesta puntuaci� no es valida"
				
				Escribir "Torna a dir la teua puntuacio jutge " i ": "
				
				Leer puntuacioJutge
				
			Fin Mientras
			
			puntuacioFinal = puntuacioFinal + puntuacioJutge
			mitjaPais = puntuacioFinal / qJutges
			
			
			Si puntuacioJutge == 10 Entonces
				puntuacio10 = Verdadero
			Fin Si
			
			
		Fin Para
		
		Escribir "La mitja de " nomPais " es " mitjaPais
		
		Si mitjaPais > mitjaGuanyadora Entonces
			mitjaGuanyadora = mitjaPais
			paisGuanyador = nomPais
		Fin Si
		
		Si puntuacio10 == Verdadero Entonces
			Escribir nomPais " ha obtingut algun 10. "
		SiNo
			Escribir nomPais " no ha obtingut ningun 10."
		Fin Si
		
		Escribir "Participen mes pa�sos en la competici�? (SI,Si,si/NO,No,no)"
		Leer participacioPais
		
		Si participacioPais == "No" o participacioPais == "no" o participacioPais == "NO" Entonces
			continuar = Falso
		FinSi
		
		Si participacioPais == "Si" o participacioPais == "si" o participacioPais == "SI"
			continuar = Verdadero
		FinSi
		
		acumTotalMitja = acumTotalMitja + mitjaPais
		
		
	Hasta Que continuar = Falso
	
	mitjaTotalPaisos =  acumTotalMitja/totalPaisos
	
	
	Escribir ""
	Escribir "Han participat " totalPaisos " pa�sos en la competici�"
	Escribir ""
	Escribir "La mitja total de tots el pa�sos es " mitjaTotalPaisos
	Escribir "________________________________________________________________________"
	Escribir "ENHORABONA " paisGuanyador "! " 
	Escribir "Has sigut el guanyador de la competici� amb una mitja de " mitjaGuanyadora
	Escribir "________________________________________________________________________"
	
	
	
FinAlgoritmo