Algoritmo calificasiones
	Escribir "Escribe un algoritmo que pase calificasiones numericas a letras"
	n<-numerico
	Repetir
	Escribir "escribe tu calificasion"
	Leer n
	Si n>20 Entonces
		Escribir "No se aspetan numeros tan grandes solo hasta 20"
	SiNo
	Si n>=19 y n<=20 Entonces
		Escribir "tu nota es A"
	SiNo
		Si n>=16 y n<=18 Entonces
			Escribir "tu nota es B"
		SiNo
			Si n>=13 y n<=15 Entonces
				Escribir "tu nota es C"
			SiNo
				Si n>=10 y n<=12 Entonces
					Escribir "tu nota es D"
				SiNo
					Si n>=1 y n<=9 Entonces
						Escribir "tu nota es Rep"
					SiNo
							Escribir "NO NEGATIVOS"
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
Hasta Que n=0
FinAlgoritmo
